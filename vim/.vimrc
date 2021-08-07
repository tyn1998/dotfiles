set runtimepath+=~/.vim
set runtimepath+=~/.fzf

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim

try
source ~/.vim/vimrcs/extra.vim
catch
endtry
