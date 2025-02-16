vim.g.mapleader = " "

local m = vim.keymap

m.set("n", "<leader>pv", vim.cmd.Ex)

m.set("v", "J", ":m '>+1<CR>gv=gv")
m.set("v", "K", ":m '<-2<CR>gv=gv")

m.set("n", "J", "mzJ`z")
m.set("n", "<C-d>", "<C-d>zz")
m.set("n", "<C-u>", "<C-u>zz")
m.set("n", "n", "nzzzv")
m.set("n", "N", "Nzzzv")
m.set("n", "<leader>zig", "<Cmd>LspRestart<CR>")

m.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)
m.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
m.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
m.set({ "n", "v" }, "<leader>y", [["+y]])
m.set("n", "<leader>Y", [["+Y]])

m.set({ "n", "v" }, "<leader>d", '"_d')

-- This is going to get me cancelled
m.set("i", "<C-c>", "<Esc>")

m.set("n", "Q", "<nop>")
m.set("n", "<C-f>", "<Cmd>silent !tmux neww tmux-sessionizer<CR>")
m.set("n", "<leader>f", vim.lsp.buf.format)

m.set("n", "<C-k>", "<Cmd>cnext<CR>zz")
m.set("n", "<C-j>", "<Cmd>cprev<CR>zz")
m.set("n", "<leader>k", "<Cmd>lnext<CR>zz")
m.set("n", "<leader>j", "<Cmd>lprev<CR>zz")

m.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
m.set("n", "<leader>x", "<Cmd>!chmod +x %<CR>", { silent = true })

m.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

m.set("n", "<leader>ea", 'oassert.NoError(err, "")<Esc>F";a')

m.set("n", "<leader>ef", 'oif err != nil {<CR>}<Esc>Olog.Fatalf("error: %s\\n", err.Error())<Esc>jj')

m.set("n", "<leader>el", 'oif err != nil {<CR>}<Esc>O.logger.Error("error", "error", err)<Esc>F.;i')

m.set("n", "<leader>vpp", "<Cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")
m.set("n", "<leader>mr", "<Cmd>CellularAutomaton make_it_rain<CR>")

m.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
