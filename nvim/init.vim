set number
set cursorline
set incsearch
set list
set wildmenu
set ignorecase
set smartcase

filetype plugin on

if has("gui_vimr")
  source ~/.config/nvim/vimr.vim
endif

let s:dein_dir = $XDG_CACHE_HOME . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
execute 'set runtimepath^=' . s:dein_repo_dir


let s:toml      = $XDG_CONFIG_HOME . '/nvim/plugins.toml'
let s:lazy_toml = $XDG_CONFIG_HOME . '/nvim/plugins_lazy.toml'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
  call dein#install()
endif
