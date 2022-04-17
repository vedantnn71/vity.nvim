local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local tab_leader = "<Space>t"
local telescope_leader = "f"

-- Some basic keybindings for lazy people like me 😴 --
-- -> Control+S - save --
-- -> Control+<standard vim arrow keys> - scroll <left/down/right/up> --
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- Telescope keybindings 🔭 --
keymap("n", "ff", ":lua require('telescope.builtin').find_files()<CR>", opts)
keymap("n", "fb", ":lua require('telescope.builtin').buffers()<CR>", opts)
keymap("n", "fg", ":lua require('telescope.builtin').live_grep()<CR>", opts)
keymap("n", "fh", ":lua require('telescope.builtin').help_tags()<CR>", opts)
keymap("n", "fc", ":lua require('telescope.builtin').colorscheme()<CR>", opts)
keymap("n", "fn", ":lua require('startup').new_file()<CR>", opts)

-- Move to previous/next tab/buffer --
keymap('n', '<A-,>', ':BufferPrevious<CR>', opts)
keymap('n', '<A-.>', ':BufferNext<CR>', opts)

-- Re-order to previous/next tab/buffer --
keymap('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
keymap('n', '<A->>', ' :BufferMoveNext<CR>', opts)

-- Goto buffer in position --
keymap('n', '<A-1>', ':BufferGoto 1<CR>', opts)
keymap('n', '<A-2>', ':BufferGoto 2<CR>', opts)
keymap('n', '<A-3>', ':BufferGoto 3<CR>', opts)
keymap('n', '<A-4>', ':BufferGoto 4<CR>', opts)
keymap('n', '<A-5>', ':BufferGoto 5<CR>', opts)
keymap('n', '<A-6>', ':BufferGoto 6<CR>', opts)
keymap('n', '<A-7>', ':BufferGoto 7<CR>', opts)
keymap('n', '<A-8>', ':BufferGoto 8<CR>', opts)
keymap('n', '<A-9>', ':BufferGoto 9<CR>', opts)
keymap('n', '<A-0>', ':BufferLast<CR>', opts)
keymap('n', '<A-c>', ':BufferClose<CR>', opts)
keymap('n', '<C-p>', ':BufferPick<CR>', opts)

-- Sort buffers automatically by --
keymap('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

keymap('n', '<Space>mc', "require('material.functions').toggle_style()", opts)
keymap('n', '<A-r>', 'vim.cmd "so ~/.config/nvim/init.lua"',opts)

-- Press <C-b> to call specs 👓 --
keymap('n', '<C-b>', ':lua require("specs").show_specs()<CR>', opts)

-- You can even bind it to search jumping and more, example: --
keymap('n', 'n', 'n:lua require("specs").show_specs()<CR>', opts)
keymap('n', 'N', 'N:lua require("specs").show_specs()<CR>', opts)

-- Make directory if not exists with :W command --
vim.cmd([[
function! s:WriteCreatingDirs()
  let l:file=expand("%")
  if empty(getbufvar(bufname("%"), '&buftype')) && l:file !~# '\v^\w+\:\/'
    let dir=fnamemodify(l:file, ':h')
    if !isdirectory(dir)
      call mkdir(dir, 'p')
    endif
  endif
  write
endfunction

command! W call s:WriteCreatingDirs()
]])


-- Neovim Tree Keybindings --
keymap('n', 'tt', ':NvimTreeToggle<CR>', opts)
keymap('n', 'to', ':NvimTreeOpen<CR>', opts)
keymap('n', 'tq', ':NvimTreeClose<CR>', opts)
keymap('n', 'tr', ':NvimTreeRefresh<CR>', opts)
keymap('n', 'tc', ':NvimTreeClipboard<CR>', opts)
keymap('n', 'tf', ':NvimTreeFocus<CR>', opts)
