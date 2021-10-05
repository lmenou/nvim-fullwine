# nvim-fullwine
Neovim colorscheme in lua inspired from wine colors and supported by
tree-sitter.

![fullwine](https://github.com/lmenou/nvim-fullwine/blob/master/examples/example_fullwine.png)

## Requirements
- [Neovim 0.5](https://github.com/neovim/neovim)  
- If using the terminal as the UI, the latter should support gui colors, i.e `set
  termguicolors` is on by default.

## Installation 
With your favourite plugin manager, you can have a look at
[packer.nvim](https://github.com/wbthomason/packer.nvim) or [vim
plug](https://github.com/junegunn/vim-plug) or even use the native solution
for plugins in Neovim (See `:help packages`).  

To give it a try, it is very simple, type `:colorscheme fullwine` and hit
Enter.  

If you wish to use it effectively:  
- vimL (in your init.vim)  
```vim
colorscheme fullwine
```
or  

- lua (in your init.lua)
```
require('fullwine').colorscheme()
```

## Configuration

### Plugin support
The colorscheme support native-LSP and tree-sitter by default. Let us hope
more is to follow.  

If you did not installed tree-sitter, simply set the global value
`fullwine_plugin_hi_group` to 0.  
- vimL (in your init.vim)
```vim
let g:fullwine_plugin_hi_group = 0
```
or  

- lua (in your init.lua)
```lua
vim.g.fullwine_plugin_hi_group = 0
```

### Italics
Some things are in italic by default, if you do not like that, simply set the
global value `fullwine_italicize` to 0 (as above).

## Contributing
 I am totally open to critics ! Raise an issue if you are not satisfied with
 something or even submit a PR, I will be pleased to discuss about both.

 Please, feel free to report any bugs also.

## License 
This plugin is licensed under Apache 2.0 (same as Neovim). See the
[LICENSE](https://github.com/lmenou/nvim-fullwine/blob/master/LICENSE) file
for more information.
