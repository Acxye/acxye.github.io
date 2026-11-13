---
title: Configs
weight: 10000
bookCollapseSection: false
bookFlatSection: false
bookToC: true
---

# Store All My Config Files

## Bash

```bash
eval "$(starship init bash)"


function proxy {
    local url="http://127.0.0.1:7897"

    export http_proxy="$url"
    export https_proxy="$url"
    export HTTP_PROXY="$url"
    export HTTPS_PROXY="$url"
}

function unproxy {
    unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY
}

function checkproxy {
    echo " http_proxy: $http_proxy"
    echo "https_proxy: $https_proxy"
    echo " HTTP_PROXY: $HTTP_PROXY"
    echo "HTTPS_PROXY: $HTTPS_PROXY"
}
```

## ClashVergeRev Rules

```txt
- 'PROCESS-NAME,Proxifier.exe,🚀 节点选择'

- 'DOMAIN-KEYWORD,xiv,🚀 节点选择'

- 'DOMAIN-KEYWORD,apple,🚀 节点选择'

- 'DOMAIN-SUFFIX,cn,DIRECT'
- 'DOMAIN-SUFFIX,jp,🚀 节点选择'

- 'DOMAIN-KEYWORD,chatgpt,🚀 节点选择'
- 'DOMAIN-KEYWORD,openai,🚀 节点选择'

- 'DOMAIN-KEYWORD,playerauctions,🚀 节点选择'

- 'DOMAIN-KEYWORD,mmominion,🚀 节点选择'

- 'DOMAIN-KEYWORD,speedercheats,🚀 节点选择'

- 'DOMAIN-KEYWORD,cloudflare,🚀 节点选择'

- 'DOMAIN-KEYWORD,discord,🚀 节点选择'

- 'DOMAIN-KEYWORD,telegram,🚀 节点选择'

- 'DOMAIN-KEYWORD,vultr,🚀 节点选择'

- 'DOMAIN-KEYWORD,github,🚀 节点选择'
- 'DOMAIN-KEYWORD,ghcr,🚀 节点选择'

- 'DOMAIN-KEYWORD,brew,🚀 节点选择'

- 'DOMAIN-KEYWORD,pypi,🚀 节点选择'
- 'DOMAIN-KEYWORD,pythonhosted,🚀 节点选择'

- 'DOMAIN-KEYWORD,astral,🚀 节点选择'

- 'DOMAIN-KEYWORD,square-enix,🚀 节点选择'
- 'DOMAIN-KEYWORD,finalfantasyxiv,🚀 节点选择'

- 'DOMAIN-KEYWORD,wbsg8v,🚀 节点选择'

- 'DOMAIN-SUFFIX,crates.io,🚀 节点选择'

- 'GEOSITE,geolocation-!cn,🚀 节点选择'

- 'MATCH,DIRECT'
```

## Git

```txt
[user]
	name = acxye
	email = 249787075+Acxye@users.noreply.github.com
[core]
	editor = nvim
[alias]
	co = checkout
	br = branch
	ci = commit
	st = status
```

## Neovim - All In One

```lua
-- TAB
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- Theme
vim.pack.add({"https://github.com/folke/tokyonight.nvim"})
vim.cmd("colorscheme ".."tokyonight-moon")
```

## WSL

```txt
[boot]
systemd=true

[network]
hostname=

[interop]
enabled=false
appendWindowsPath=false

[user]
default=
```
