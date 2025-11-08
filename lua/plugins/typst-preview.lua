return {
  "chomosuke/typst-preview.nvim",
  lazy = false, -- or ft = 'typst'
  version = "1.*",
  opts = {
    dependencies_bin = { ["tinymist"] = "tinymist" },

    -- Set the root to where .git is located so that preview works in subfolders.
    get_root = function(path_of_main_file)
      local git_root = vim.fs.dirname(vim.fs.find({ ".git" }, { path = path_of_main_file, upward = true })[1])
      if git_root then
        return git_root
      end

      local root = os.getenv("TYPST_ROOT")
      if root then
        return root
      end

      return vim.fn.fnamemodify(path_of_main_file, ":p:h")
    end,
  },
}
