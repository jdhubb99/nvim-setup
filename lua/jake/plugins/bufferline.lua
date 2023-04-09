local setup, bufferline = pcall(require, "bufferline")

if not setup then
  return
end

bufferline.setup({
  options = {
    mode = "buffers",
    separator_style = "padded_slant",
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      }
    }
  }
})
