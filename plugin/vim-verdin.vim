function EnableVimCompletion()
  echo printf("Disable CocPlugin\n")
  CocDisable
  echo printf("Enter vim Script autoCompletion\n")
  let g:Verdin#autocomplete = 1
endfunction
nnoremap <silent>se mqA;<Esc>'q<cr> " Add semicolon to end to the line
autocmd BufNewFile,BufRead,FileReadPre *.vim call EnableVimCompletion()
autocmd BufNewFile,BufRead,FileReadPre *.vim nnoremap <silent><leader>lp "execute \"normal! gg\" . '/^\"INSTALL PLUGINS' . \"\<CR>" . \"N\""<CR>
autocmd BufNewFile,BufRead,FileReadPre *.vim let @o="/^\"OPTIONS"
