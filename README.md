# neovim
My personal NeoVim configuration.

## :sparkles: Plugins:
| Plugin | Description |
| ------ | ----------- |
|
|

## :wrench: Setup and Usage
#### File Tree
```
.
├── init.lua
├── lua/
│   ├── configs.lua
│   ├── plugins.lua
│   └── remaps.lua
```

| Lua File | What |
| -------- | ---- |
| init.lua | Requires all the lua files and initialises the plugins. |
| configs.lua | Sets all the vim configuration settings. |
| plugins.lua | Uses packer.nvim to install all used plugins. |
| remaps.lua | Sets all the custom keybindings for the plugins and any vim commands. |

#### Installation
Copy the contents from this repository to you nvim config folder:

```bash
git clone https://github.com/milanrocher/neovim.git
cd neovim
cp * ~/.config/nvim/
```

## :bulb: Contact
Milan Rocher\
milanrocher@gmail.com
