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


---

1. is there a way to copy everything in vim as a shortcut?
2. is there a way to select text, then execute a command (with selection as input) say i wanna do - select "ABC" and then run "enc_b64" on it to base64 << ($selected text)) 

Yes.
solution for 1 and 2:

# Solution to Q1 - copy everything in vim
1. install `vim-X11` and then, make a function / alias `vim=vimx` and then run vimx or vim(which auto-vimx's)
2. `set mouse=a`
3. `set clipboard=unnamedplus`
4. `ESC -> gg -> ggVG -> y` now you have copied a ENTIRE FILE to YOUR SYSTEMS CLIPBOARD.
5. you dont even need to do `CTRL+C` or `CTRL+V`.
6. ♥️now you can also use : `viW` to select and copy `y`:
7. be inside a word and then: `viW` and then: `y` and you copied that word. 

---

- `SHIFT + CLICK + HOLD` for COMMAND SELECTION = SELECTING WITH `set mouse=a` enabled.
- <img width="382" height="154" alt="image" src="https://github.com/user-attachments/assets/6c3c94ef-9cb1-4df3-a210-a852dca28b0a" />

# Solution to Q2 - base64 a word in vim
#### personal thought:
`also, is this a "known bad thing" about vim?`
it says its good at text editing, but cant select a word and then send to a shell script? it sends the line? (okay, there is ways to do it i guess but..) yes. its a known quirk after googling. most shell scripts (base64, sed, etc) expects lines, i guess.


`----------------------------------------------------------------------`
### but, we **can TRICK IT OUT!**
1. `esc` 
2. `viW`
3.  `c`
4. `CTRL + R` and then `=`
5. `system('base64 --wrap=0', @")`

repeat but with `base64 -d --wrap=0` instead to get it back.
;TODO improve this to be a command maybe. IF POSSIBLE. a vim-curiosity so far.
`----------------------------------------------------------------------`

## selecting word and WORD

- `viw` selects the current word, but skips = and stuff.
- `viW` selects `word+=`

## splitting screens

- close window
  - ctrl w
  - c

split windows
- vsplit / split
- ctrl (double-w) to move to windows
- `only` <- closes ALL but THE ONE YOURE IN NOW



