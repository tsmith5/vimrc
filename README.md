# .vimrc
This is my JS-focused VIM config which I am currently running on MacOS. It should work on Linux without any changes, and on Windows you should only need to modify the swap dir and plugin paths.

## Dependencies

1. Vim (obviously)
2. [Vim Plug](https://github.com/junegunn/vim-plug)
3. [Powerline Fonts](https://github.com/powerline/fonts)
4. A decent terminal emulator with support for Powerline fonts and their symbols

## Install

1. Replace the default vimrc with this one. On UNIX it's pretty typically found in ~/.vimrc, or in %AppData% on Windows.
2. Go through the file and change any hotkeys or directory paths that you don't like
3. Open the file in vim and type `:PlugInstall` then restart vim.

## Features

Just a short list of hotkeys and features offered by this config:

- **`F2`** opens (or closes) a file tree and lets you browse the directory for other files to edit. New files open in tabs.
- Browse tabs with **`F3`** (Previous Tab) and **`F4`** (Next Tab)
- Open a `git blame` split pane with **`F5`**, and press **`o`** to open the commit diff responsible for that line.
- Fixes lots of common exit typos, such as :Wq or :wQ, effectively making it case-insensitive
- Better defaults, like visible line numbers, highlight matching braces, scroll offset so you can always see above or below the current cursor line, etc.
- Auto indent using 2 spaces with support for certain HTML tags
- Airline status bar with a wide variety of information about the file you're currently working on.
- Comfortable dark theme colors
- Dedicated directory for swap files
- Better split behavior (open right and down, move with ctrl+HJKL single chords)
- Set unix line endings by default
- Support UTF-8
- Syntax Highlighting and Linting with support for JSX
- CSS Color Highlighter
- Realtime Syntax Checking
- Auto Formatting
- Auto close HTML tags

etc.

## Preview

![Preview of .vimrc File](https://github.com/tsmith5/vimrc/blob/master/preview/preview.png)

