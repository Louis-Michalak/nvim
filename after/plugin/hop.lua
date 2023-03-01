local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set("", "f", vim.cmd.HopWord)
vim.keymap.set("", "<leader>f", vim.cmd.HopChar1)
