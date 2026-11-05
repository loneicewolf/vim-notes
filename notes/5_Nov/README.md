### vimrc

```vim
autocmd VimEnter * let @/ = ""
" command! LoadPrompts source ~/.vim/profiles/crypto.vim
" command! LoadPrompts source ~/.vim/profiles/prompts.vim

command! Date r !date
command! CheckSumSha1Date r !sha1sum <<< $(date)

```

- `r` is for READ INTO VIM.
- !"actual command" (the ! is for shell execv)
- Remember to have **BIG letters** in beginning of `command_NAMES`
