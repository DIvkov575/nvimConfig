-- Remaps for the refactoring operations currently offered by the plucgin
vim.api.nvim_set_keymap("v", "<leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})
--
-- -- Extract block doesn't need visual mode
-- vim.api.nvim_set_keymap("n", "<leader>rb", [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]], {noremap = true, silent = true, expr = false})
-- vim.api.nvim_set_keymap("n", "<leader>rbf", [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]], {noremap = true, silent = true, expr = false})
--
-- -- Inline variable can also pick up the identifier currently under the cursor without visual mode
-- vim.api.nvim_set_keymap("n", "<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})
-- vim.api.nvim_set_keymap(
--     "v",
--     "<leader>rr",
--     ":lua require('refactoring').select_refactor()<CR>",
--     { noremap = true, silent = true, expr = false }
-- )
-- load refactoring Telescope extension
-- require("telescope").load_extension("refactoring")
--
-- -- remap to open the Telescope refactoring menu in visual mode
-- vim.api.nvim_set_keymap(
-- 	"v",
-- 	"<leader>rr",
-- 	"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
-- 	{ noremap = true }
-- )
-- -- You can also use below = true here to to change the position of the printf
-- -- statement (or set two remaps for either one). This remap must be made in normal mode.
-- vim.api.nvim_set_keymap(
-- 	"n",
-- 	"<leader>rp",
-- 	":lua require('refactoring').debug.printf({below = false})<CR>",
-- 	{ noremap = true }
-- )
--
-- -- Print var
--
-- -- Remap in normal mode and passing { normal = true } will automatically find the variable under the cursor and print it
-- vim.api.nvim_set_keymap("n", "<leader>rv", ":lua require('refactoring').debug.print_var({ normal = true })<CR>", { noremap = true })
-- -- Remap in visual mode will print whatever is in the visual selection
-- vim.api.nvim_set_keymap("v", "<leader>rv", ":lua require('refactoring').debug.print_var({})<CR>", { noremap = true })
--
-- -- Cleanup function: this remap should be made in normal mode
-- vim.api.nvim_set_keymap("n", "<leader>rc", ":lua require('refactoring').debug.cleanup({})<CR>", { noremap = true })
--
-- -- You can also use below = true here to to change the position of the printf
-- -- statement (or set two remaps for either one). This remap must be made in normal mode.
-- vim.api.nvim_set_keymap(
-- 	"n",
-- 	"<leader>rp",
-- 	":lua require('refactoring').debug.printf({below = false})<CR>",
-- 	{ noremap = true }
-- )
--
-- -- Print var
--
-- -- Remap in normal mode and passing { normal = true } will automatically find the variable under the cursor and print it
-- vim.api.nvim_set_keymap("n", "<leader>rv", ":lua require('refactoring').debug.print_var({ normal = true })<CR>", { noremap = true })
-- -- Remap in visual mode will print whatever is in the visual selection
-- vim.api.nvim_set_keymap("v", "<leader>rv", ":lua require('refactoring').debug.print_var({})<CR>", { noremap = true })
--
-- -- Cleanup function: this remap should be made in normal mode
-- vim.api.nvim_set_keymap("n", "<leader>rc", ":lua require('refactoring').debug.cleanup({})<CR>", { noremap = true })
--
-- require('refactoring').setup({
--   -- overriding printf statement for cpp
--   printf_statements = {
--       -- add a custom printf statement for cpp
--       cpp = {
--           'std::cout << "%s" << std::endl;'
--       }
--   }
-- })
--

require('refactoring').setup({
    -- prompt for return type
    prompt_func_return_type = {
        go = true,
        cpp = true,
        c = true,
        java = true,
    },
    -- prompt for function parameters
    prompt_func_param_type = {
        go = true,
        cpp = true,
        c = true,
        java = true,
    },
})
