# nvim-fullwine :grapes: :fallen_leaf:
Neovim colorscheme in lua inspired from the colors of Bacchus, autumn and wine.  
The colorscheme is supported by tree-sitter.

![fullwine](examples/example_fullwine.png)

## Requirements :lock_with_ink_pen:
- [Neovim 0.5](https://github.com/neovim/neovim)  
- If using the terminal as the UI, the latter should support gui colors, i.e `set
  termguicolors` is on by default.

## Installation :incoming_envelope:
With your favourite plugin manager, you can have a look at
[packer.nvim](https://github.com/wbthomason/packer.nvim) or [vim
plug](https://github.com/junegunn/vim-plug) or even use the native solution
for plugins in Neovim (See `:help packages`).  

To give it a try, it is very simple, type `:colorscheme fullwine` and hit
Enter.  

If you wish to use it effectively:  
- vimL (in your init.vim)  
```
colorscheme fullwine
```
or  

- lua (in your init.lua)
```
require('fullwine').colorscheme()
```

There exists a soft and a hard version of the colorscheme. To use or try them,
replace `fullwine` by respectively `fullwine_soft` and `fullwine_hard` in the
commands specified above. Simple, isn't it ?

## Configuration :gear:

### Tree-Sitter support :leaves:
The colorscheme support native-LSP and is supported by tree-sitter by default
if installed (like all colorschemes, thanks to the nvim core team).

### Plugin support :zap:

The colorscheme support various famous plugins. See the lua table in
`lua/theme_setter.lua` to check them.

If you wish the highlighting for plugins, you should turn this on. Note
that this might lead to bugs when switching away from the colorscheme.

To turn the plugin support on, simply set the global variable
`fullwine_plugin_hi_group` to 1 (as specified above).

### Italics :writing_hand:
Some things are in italic by default, if you do not like that, simply set the
global value `fullwine_italicize` to 0 (as above).

## Contributing :thought_balloon:
I am totally open to critics ! Raise an issue if you are not satisfied with
something or even submit a PR, I will be pleased to discuss about both.

Please, feel free to report any bugs also.

If you look at my dotfiles, you will see that I am not a user of most of the
supported plugins, hence, if you are dissatisfied with some highlights (and
this might be totally legitimate), feel free to propose a correction too !

Additionally, if a plugin is not supported, well, you might guess what to do
from the above.

## License :bookmark:
This plugin is licensed under Apache 2.0 (same as Neovim). See the
[LICENSE](https://github.com/lmenou/nvim-fullwine/blob/master/LICENSE) file
for more information.
