-- disable default file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("ab.lazy")
require("ab.tree_file_explorer")
require("ab.remap")
require("ab.set")
require("ab.colors")
require("ab.command")
vim.o.timeout = false
