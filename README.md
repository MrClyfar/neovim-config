# neovim-config
My personal Neovim configuration.

Before installing Neovim, it was suggested (see this [Reddit post](https://www.reddit.com/r/neovim/comments/1loydvv/after_installing_lsp_for_json_docker_and_yaml_now/)) that I first download the [gcc compiler](https://www.mingw-w64.org/downloads/), [clangd](https://github.com/clangd/clangd/releases) and make (must admit I forgot to instal `make` so it does not seem that I need it).

Make sure your PATH env variable, the 'user' one, has the following entries:

- C:\Program Files\w64devkit\bin
- C:\Program Files\clangd\bin

Move `w64devkit` to the top of the list, to ensure that Neovim picks that compiler over anything else that might be available.

I installed [Neovim for Windows](https://github.com/neovim/neovim/blob/master/INSTALL.md) and then followed the [lazvim install instructions](https://www.lazyvim.org/installation) for Windows.

**LSP**

I used [this repo](https://github.com/neovim/nvim-lspconfig/tree/master/lsp) to find lua config files for various LSPs

As of [v0.11 Neovim](https://neovim.io/doc/user/lsp.html) natively supports LSP.

I followed [this tutorial](https://youtu.be/IZnhl121yo0?feature=shared) to help me get started. But I encountered problems because I had not installed the required binaries.

First, make sure that the `lua-language-server` is installed

```
winget install --id=LuaLS.lua-language-server  -e
```

After that, depending on the LSP server you want to use, you may need to install `yarn`, which I did in order to use the yaml language server.

```npm install --global yarn```

Run the command `yarn global bin` and add it's folder path to the PATH env variable, like you did for `w64devkit` and `clangd`.

For the Javascript/Typescript LSP, I needed to install the following:

```
npm install -g typescript-language-server
npm install -g typescript
```

In this repo, the key files and folders to focus on are:

- `/lsp` folder
   This is where the .lua files for each language server I want to use can be found.

- `lua/core/lsp.lua`
   This is where each lsp is enabled. I also configure the virtual text options, so that warnings/errors appear in file windows.

Notice in `init/lua` that I call `require("core.lsp")` to make sure that the lsp.lua file is processed.

**18/9/2025**

After I updated lazyvim to the latest version, I saw this error when starting neovim:

>**treesitter-main** requires the `tree-sitter` CLI executable to be installed.
Run `:checkhealth nvim-treesitter` for more information.

To fix this issue I had to install the following:

```bash
npm install -g tree-sitter-cli
```
