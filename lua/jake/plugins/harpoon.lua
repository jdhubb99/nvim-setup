local setup_mark, mark = pcall(require, "harpoon.mark")

if not setup_mark then
  return
end

local setup_ui, ui = pcall(require, "harpoon.ui")

if not setup_ui then
  return
end

-- set keymaps
local keymap = vim.keymap
keymap.set("n", "<leader>ht", ui.toggle_quick_menu)
keymap.set("n", "<leader>ha", mark.add_file)

for pos = 1, 9 do
  keymap.set("n", "<leader>h" .. pos, function()
    ui.nav_file(pos)
  end)
end
