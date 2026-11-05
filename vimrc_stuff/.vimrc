" ------------------------------------------------------------------ " 
" Make clearing the last used search pattern easy
"
nnoremap <silent> q, :let @/ = ""<CR>

" Execute the passed search command, but check has the last used
" search pattern been cleared and do nothing in that case, to fix
" a weird search misbehavior when searching forward or backward
" is performed after clearing the search pattern
"
function! ExecuteSearch(command)
  if strlen(@/) > 0
    execute "normal! " .. a:command
  endif
endfunction

nnoremap <silent> n :call ExecuteSearch("n")<CR>
nnoremap <silent> N :call ExecuteSearch("N")<CR>
" https://stackoverflow.com/a/77821964/11875039 
" ------------------------------------------------------------------ " 

autocmd VimEnter * let @/ = ""



" ================================= "
" STUFF I HAVE YET TO DO
" ================================= "
" command! LoadPrompts source ~/.vim/profiles/crypto.vim
" command! CHECKSUM_SHA_1_DATE !sha1sum <<< $(date)
" command! LoadPrompts source ~/.vim/profiles/prompts.vim
command! Date r !date
command! CheckSumSha1Date r !sha1sum <<< $(date)



" ================================= "
" CYCLE COLOR SCHEMES 
" ================================= "
" Press F5 to cycle through all available colorschemes
let s:colors = getcompletion('', 'color')
let s:i = 0
function! NextColor()
    if empty(s:colors)
        return
    endif
    let s:i = (s:i + 1) % len(s:colors)
    execute 'colorscheme ' . s:colors[s:i]
    echo 'Current colorscheme: ' . s:colors[s:i]
endfunction
nnoremap <F5> :call NextColor()<CR>

" =============================== "
