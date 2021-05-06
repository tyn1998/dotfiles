" hybrid number
set relativenumber
set nu rnu

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

" 按两次Esc清楚屏幕所有“覆盖物”
" 为了coc诊断浮窗有时会卡住而设
nnoremap <silent> <ESC><ESC> :nohlsearch \| match none \| 2match none \| call coc#float#close_all()<CR>

" 设置较小的ttimeoutlen使得fcix.vim的响应时间快一点
set ttimeoutlen = 50
