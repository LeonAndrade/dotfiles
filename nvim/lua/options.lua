local options = {
	backup = false,

	-- Colors
	termguicolors = true,
	colorcolumn = "80,100",
	fileencoding = "utf-8",
	guicursor = "",

	-- Search
	hlsearch = true,
	incsearch = true,
	ignorecase = true,
	linebreak = true,

	-- Indent
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	showtabline = 2,
	expandtab = true,
	smartindent = true,

	-- Numbers
	nu = true,
	numberwidth = 4,
	relativenumber = true,

	-- Folding
	foldenable = true,
	foldcolumn = "auto",

	-- Undo / Backup
	swapfile = false,
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile = true,

	-- Intuitive window split
	splitbelow = true,
	splitright = true,

	-- Padding
	sidescrolloff = 12,
	scrolloff = 8,
	updatetime = 300,
	signcolumn = "yes",
	wrap = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
