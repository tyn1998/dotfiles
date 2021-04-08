" hybrid number
set relativenumber
set nu rnu

" 覆盖amix默认的color scheme
colorscheme molokai
" 覆盖amix默认lightline设置的主题，反斜杠必须有
let g:lightline = {
      \ 'colorscheme': 'molokai'
      \ }

" 当前行下划线
set cursorline

" 使用J和K切换tab
nnoremap J :tabprevious<CR>
nnoremap K :tabnext<CR>
" 在两个tab间切换
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-^> :exe "tabn ".g:lasttab<cr>
" 用<<和>>来移动tab
nnoremap << :-tabmove<CR>
nnoremap >> :+tabmove<CR>

" 有道翻译
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" AsyncRun时自动打开quickfix窗口
let g:asyncrun_open = 6
" 绑定快捷键实现一键编译、运行
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f6> :AsyncTask project-run<cr>
noremap <silent><f7> :AsyncTask project-build<cr>
noremap <silent><f9> :AsyncTask file-build<cr>
