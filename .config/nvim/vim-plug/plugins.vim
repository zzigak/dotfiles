"nikolvs/vim-sunbather"" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'kyoz/purify', { 'rtp': 'vim' }   
    Plug 'lifepillar/vim-gruvbox8'
    Plug 'itchyny/lightline.vim'

    "Airline
  "  Plug 'vim-airline/vim-airline'
  "  Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'

    " Better Syntax Support
	Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()
