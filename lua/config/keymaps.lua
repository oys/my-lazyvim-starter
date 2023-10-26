-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("n", "=j", "<cmd>:set modifiable<CR>:set ft=json<CR>:%!jq .<CR>", {})
map("n", "=x", "<cmd>:set modifiable<CR>:set ft=xml<CR>:%!xmllint --format -<CR>", {})
