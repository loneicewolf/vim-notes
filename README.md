# vim-notes
My Journey trough VI(Mproved) 

## Epiphanies 
- You can type "abc" to mean "Hello World", so when you type "abc" it auto types "Hello World" using iabbrev. Wow. this made me literally go "IS THIS THING SENTIENT?!"
  - this means, dont use natural words (e.g "1"="hello world", because, what if you need to type 123? that becomes `hello world23` so, use `txt_1_hw` for `hello world`. (why the `_1_`? alias, so u can auto-tab txt_1<TAB>) ig?
    - i think this is beginning to make me realize just how powerful vim is. like.. before i just "why use vim at all!?" but now i just...now i kinda understand people. like - people who - use it. I can make my own system. my own template with parentheses etc.

## How?
**like this:**
- this types out "red hair" when you type "rh" 
  - `iabbrev rh red hair|:iabbrev gh green hair|:iabbrev yh blonde hair`

- and this types out...well. you see for yourself.
  - `iabbrev sh short hair|:iabbrev lh long hair`

---

**OKAY this is something else.**
I can do 3 ways of replacing text.
1. go into insert mode & use the "notepad/nano" way. (simple n slow but works)
2. go into normal mode & use global sub(replace) way. this is where i begun to go `w o w`
3. here, i thought recursively. "wait, why do way (2) x-times, when i can do it in one line?" SOOO.. I did `:%s | %s | %s` where `%s %s %s` is [non-typed-here] replacings. like `;` in `bash`
*For example, say I have a list of pinterest notes i wanna manipulate:*
- `%s/HAIR/A/g | %s/CLOTHES/B/g | %s/SETTING/C/g`

But, I thought "okay okay, ive automated the automation 2 times. can i do it one more time?!"
and Yes we can, say we can do this:
- `" Replace HAIR, CLOTHES, SETTINGS with `
  - `%s/\v(HAIR|CLOTHES|SETTING)/\1/g`
- and we can use its own built in submatch (basically a index, like in python, `Hello[0]=H`)
  - `:%s/\v(HAIR|CLOTHES|SETTING)/\=submatch(1)[0]/g`

---


## Problems defined
- a lot of unsorted text.
- vim is a text editor which does "do ONE THING, and DO IT WELL."
- hence, i should also follow it.
  - i dont need to know 100 things about vim, only "one" thing(s) (a group of basic commands, perhaps)
  
