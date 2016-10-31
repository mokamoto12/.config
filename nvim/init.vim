set number
set cursorline
set incsearch
set list
set wildmenu
set ignorecase
set smartcase

function! CreateBackup()
  setlocal backup
  setlocal writebackup
  let &backupext = '_BK' . strftime("%Y%m%d") . '_OKAMOTO_MASAHIRO'
endfunction

autocmd BufEnter *mount/* :call CreateBackup()

source ~/.config/nvim/dein.vim
source ~/.config/nvim/color.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/indent.vim

filetype plugin on
