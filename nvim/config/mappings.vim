nnoremap <silent> <Leader>p :e #<CR>
nnoremap <silent> <Leader>s :sp #<CR>
nnoremap <silent> <Leader>c <C-w><C-c>

" Shougo/denite
nnoremap [Denite] <Nop>
nmap <Leader> [Denite]
nnoremap <silent> [Denite]f :Denite file_rec<CR>
nnoremap <silent> [Denite]b :Denite buffer<CR>
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>')

" Shougo/deoplete
inoremap <silent><expr><CR>   pumvisible() ? deoplete#close_popup() : "\<CR>"
inoremap <silent><expr><Up>   pumvisible() ? "\<C-p>"  : "\<Up>"
inoremap <silent><expr><Down> pumvisible() ? "\<C-n>"  : "\<Down>"
