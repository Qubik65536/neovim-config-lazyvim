return {
  "chomosuke/typst-preview.nvim",
  lazy = false, -- or ft = 'typst'
  version = "1.*",
  opts = {
    dependencies_bin = { ["tinymist"] = "tinymist" },

    -- Set the root to where .git is located so that preview works in subfolders.
    get_root = function(path_of_main_file)
      return vim.fs.dirname(vim.fs.find({ ".git" }, { path = path_of_main_file, upward = true })[1])
    end,
  },
}
