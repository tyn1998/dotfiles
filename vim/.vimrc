set runtimepath+=~/.vim

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'farmergreg/vim-lastplace'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'amix/vim-zenroom2'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asyncrun.extra'
Plug 'skywind3000/asynctasks.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'szw/vim-maximizer'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-obsession'
Plug 'honza/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ianva/vim-youdao-translater'
Plug 'puremourning/vimspector'
Plug 'preservim/vimux'
Plug 'terryma/vim-expand-region'
Plug 'tyn1998/vim-lilypond'
Plug 'github/copilot.vim'
Plug 'liuchengxu/vista.vim'

call plug#end()

