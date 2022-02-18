# deno-tools

Provide setting.json like vscode

## How to do 

Write settings.lua under the top of fold

like 
```lua
return {
  deno = {
    importMap = "./import_map.json",
    config = "./deno.json",
    unstable = true,
  }
}
```

then write like this

```lua
local settings = require("deno-tool").read()
require'lsconfig'.denols.setup {
  on_attach = on_attach,
  root_dir = nvim_lsp.util.root_pattern("deno.json"),
  init_options = settings,
}
```
