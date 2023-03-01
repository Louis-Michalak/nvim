vim.g.copilot_assume_mapped = true
vim.keymap.set("i", "<M-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
