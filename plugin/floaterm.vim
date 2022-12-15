"""""""""""""""""""""""""""""""""""""""""""""""""
"FLOATERM CONFIGURATION SECTION
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:floaterm_height = 0.4
let g:floaterm_width = 0.4
let g:floaterm_title = "         真実があなたを解放する前に、それはあなたを怒らせるでしょう"
let g:floaterm_shell = "$SHELL"
" 'vsplit','split' or 'float'
let g:floaterm_wintype = 'float'
let g:floaterm_position = 'bottom'
let g:floaterm_borderchars = " │ │"
let g:floaterm_opener = "split"
let g:floaterm_keymap_new    = '<leader>t'
let g:floaterm_keymap_prev   = '<leader>tp'
let g:floaterm_keymap_next   = '<leader>tn'
let g:floaterm_keymap_toggle = '<leader>to'
hi FloatermBorder guibg=orange guifg=cyan

"nnoremap <silent><leader>db :hi FloatermBorder guibg=orange guifg=cyan<cr>
