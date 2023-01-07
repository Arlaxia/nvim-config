# Nvim configuration

This is my personal neovim configuration. I'll compile a list of the sources from where
I've taken ideas and guidance in getting it as it is right now.

There's also a small guide for usage.

## Quickguide

### Keymaps

The spacebar acts as the leader key. Most useful commands are assigned with a leader
keymapping, that is, `<leader>...`.

Keymaps try to follow a mnemonic device, usually by assigning a letter to a certain
function. These functions are:

- `<leader>f...`: file keymaps
- `<leader>e...`: explorer keymaps
- `<leader>t...`: terminal keymaps 
- `<leader>u...`: undo keymaps
- `<leader>g...`: git keymaps
- `<leader>q...`: quit keymaps

Given that there might be several useful commands for each function, the first letter
indicates the function, and a second, or more if needed, indicates
the specific command to execute. For example, to *find file*, we press `<leader>f` (file)
followed by `f` (find). Most keymaps can be found on the `keymaps.lua` file, while
some might be located on a plugin's lua config file.

## Sources

- [Neovim from scratch](https://github.com/LunarVim/Neovim-from-scratch)
- [ThePrimeagen videos on neovim](https://www.youtube.com/@ThePrimeagen/videos)
- Setup configurations from the plugins' repos
