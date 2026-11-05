### vimrc

```vim
autocmd VimEnter * let @/ = ""


" command! LoadPrompts source ~/.vim/profiles/crypto.vim
" command! CHECKSUM_SHA_1_DATE !sha1sum <<< $(date)

" command! LoadPrompts source ~/.vim/profiles/prompts.vim
command! Date r !date
command! CheckSumSha1Date r !sha1sum <<< $(date)

```

- `r` is for READ INTO VIM.
- !"actual command" (the ! is for shell execv)
