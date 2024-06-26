--[[vim.cmd(
    [[
        
 function CenterPane()
   lefta vnew
   wincmd w
   exec 'vertical resize '. string(&columns * 0.75)
 endfunction
    ]]
--)
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--vim.keymap.set("n", "<leader>cl", vim.cmd(':call CenterPane()'))

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)
vim.keymap.set("n", "<leader>cp", "<cmd>Centerpad<CR>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/maciek/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
vim.keymap.set("n", "<leader>ol", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>:set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>")
vim.keymap.set("n", "<leader>tj", "<cmd>:set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>")
vim.keymap.set('n', "<leader>gb", "<cmd>:GitBlameToggle<CR>")
vim.keymap.set('n', "<leader>tt", "<cmd>:terminal<CR>")
vim.keymap.set('n', "<C-j>", "<C-w><C-j>")
vim.keymap.set('n', "<C-k>", "<C-w><C-k>")
vim.keymap.set('n', "<C-l>", "<C-w><C-l>")
vim.keymap.set('n', "<C-h>", "<C-w><C-h>")
vim.keymap.set('n', "<leader>mb", "<cmd>:! make build<CR>")
vim.keymap.set('n', "<leader>mr", "<cmd>:terminal make run<CR>")
