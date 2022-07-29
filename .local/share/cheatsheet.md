---
title: Cheatsheet for my `tester` system
author: David Muñoz Lahoz
---

# `dwm` (window manager)

## General

- `Win+Enter`: Open terminal
- `Win+q`: Close window
- `Win+j/k`: Cycle through windows by their stack order
- `Win+Space`: Make selected widow the master (or switch master
  with 2nd
- `Win+h/l`: Change width of window
- `Win+z/x`: Increase/decrease gaps
- `Win+a`: Toggle gaps
- `Win+A`: Default gaps
- `Win+Shift+Space`: Make a window float (move/resize with
  `Win+left/right click`)
- `Win+s`: Make a window sticky (follows you from tag to tag)
- `Win+b`: Toggle statusbar (also `Middle click` on desktop)
- `Win+v`: Jump to master window

## Basic programs
- `Win+d`: `dmenu_run` program launcher
- `Win+r`: `lf` file browser
- `Win+R`: `htop` task manager, system monitor
- `Win+m`: `ncmpcpp` music player
- `Win+w`: `brave` web browser
- `Win+W`: `nmtui` internet connection
- `Win+n`: `vimwiki` take notes
- `Win+F4`: `pulsemixer` audio system control
- `Win+'`: `bc` calculator
- `Win+c`: Bluetooth controler

## Tags
- `Win+(Number)`: Go to tag `Number=1-9` (tag `0` means all tags)
- `Win+Shift+(Number)`: Send window to `Number=1-9` (tag `0` means
  all tags)
- `Win+f`: Toggle full screen
- `Win+,`: Go to left tag (hold `Shift` to send a window there)
- `Win+.`: Go to right tag (hold `Shift` to send a window there)
- `Win+Left/Right`: Move to another display
- `Mod+Shift+Left/Right`: Move window to another display
- `Win+Tab`: Go to previous tag

## System
- `Win+F1`: Show cheatsheet
- `Win+F2`: Emoji selector
- `Win+F9`: Menu to mount external drives
- `Win+F10`: Menu to unmount external drives
- `Win+Backspace`: Spawn options to close the system

## Recording
- `Win+F11`: View webcam
- `PrtSc`: Save screenshot of full screen
- `Shift+PrtSc`: Save screenshot of a screen region

## Window layouts
- `Win+t`: Tiling mode (default)
- `Win+T`: Bottom stack mode
- `Win+f`: Fullscreen mode
- `Win+F`: Floating mode
- `Win+y`: Fibonacci spiral mode
- `Win+Y`: Dwindle mode
- `Win+u`: Master on left, other windows in monocle mode
- `Win+U`: Monocle mode (all windows fullscreen and cycle through)
- `Win+i`: Center the master window
- `Win+I`: Center and float the master window
- `Win+o/O`: Increase/decrease the number of master windows

## Other keyboard buttons

Volume (up, down and mute), microphone (on and off), brightness
(up and down),
audio control (toggle start/pause, stop, next, previous), sleep and
power off

# `alacritty` (terminal emulator)

## Bash shortcuts
- `<c-o>`: switch directories using lf
- `<c-f>`: fuzzy finder
- `<c-l>`: clear screen
- `<c-c>`: kill the current process running in terminal
- `<c-z>`: suspend the current process
- `<c-d>`: close the bash shell
- `<c-s>, <c-q>`: stop, start all output to the screen
- `<esc>`: enter vi mode

## Aliases
- `ka`: killall
- `g`: git
- `z`: zathura
- `p`: pacman
- `sdn`: shutdown -h now
- `e`: $EDITOR
- `v`: $EDITOR
- `cac`: cd $XDG_CACHE_HOME
- `cf`: cd $XDG_CONFIG_HOME
- `src`: cd $HOME/.local/src
- `bin`: cd $HOME/.local/bin
- `h`: cd
- `dox`: cd $HOME/dox

# `lf` (file manager)

## Movement
- `q`: quit
- `h,j,k,l`: move left, up, down, right between directories
- `l`: on a file, open it
- `<c-u>, <c-b>`: half up, page up
- `<c-d>, <c-v>`: half down, page down
- `], [`: jump next, previous position
- `gg, G`: top, bottom
- `gh`: go home (~)

## Manipulate files
- `y`: copy
- `d`: cut
- `p`: paste
- `c`: clear
- `D`: delete
- `E`: extract
- `<c-n>`: new directory
- `<c-s>`: toggle hidden
- `<enter>`: shell
- `Y`: copy file full path to clipboard

### Naming
- `r, A`: rename (at the end)
- `e`: bulk rename
- `c`: clear rename
- `I`: rename at the beginning
- `i`: rename before extension
- `a`: rename just after extension
- `B`: bulkrename
- `C`: copyto (?)
- `M`: moveto (?)

### Selection
- `v`: invert selection
- `u`: unselect

### Marks
- `m`: mark save
- `'`: mark load
- `"`: mark remove

## Search
- `f, F`: find, find back
- `;, ,`: find next, find previous
- `/,?`: search, search back
- `n, N`: search next, search previous
- `<c-f>`: fuzzy find

## Misc
- `:`: read
- `$`: shell
- `t`: tag toggle
- `z`: file visibility and info options
- `s`: sorting options
- `<c-l>`: redraw
- `<c-r>`: reload
- `b`: set image as background (?)


# `zathura` (PDF reader)
## General
- `q`: quit
- `h,j,k,l`: move left, up, down, right between directories
- `u, d`: scroll half up, down
- `gg, G, nG`: go to the first, last or `n`th page
- `H, L`: go to top, bottom of the current page
- `a`: adjust window in best fit mode
- `s`: adjust window in width fit mode
- `/, ?`: search for next, previous
- `n, N`: go to next, previous result
- `o, O`: open document
- `f`: follow links
- `F`: display link target
- `c`: copy link target into the clipboard
- `:`: enter command
- `D`: toggle dual page view
- `r`: reload document
- `R`: rotate document
- `K, L`: zoom in, out
- `Tab`: show index and switch to Index mode
- `F5`: switch to presentation mode
- `F11`: switch to fullscreen mode
- `<C-m>`: toggle input bar
- `<C-n>`: toggle status bar
- `n=`: zoom to size `n`
- `<space>`: scroll a full page down
- `<S-space>, <BackSpace>`: scroll a full page down

## Index mode
- `k, j`: move to upper, lower entry
- `l`: expand entry
- `L`: expand all entries
- `h`: collapse entry
- `H`: collapse all entries
- `<space>, <Return>`: select and open entry
