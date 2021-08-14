# NeoVIM Configuration
a NeoVIM Configuration

## Supported Languages
- JavaScript
- Dart & Flutter
- Golang

## Requirement

- [Neovim (v0.5)](https://github.com/neovim/neovim/releases/tag/v0.5.0) or newer
- [vim-plug](https://github.com/junegunn/vim-plug) 

## Editor Config
### JavaScript Standard
```
root = true

[*]
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true
charset = utf-8

[*.js]
indent_style = space
indent_size = 2

[{package.json,*.yml,*.cjson}]
indent_style = space
indent_size = 2
```

### Flutter
```
root = true

[*]
insert_final_newline = true
trim_trailing_whitespace = true
charset = utf-8
indent_style = space
indent_size = 2

[*.md]
max_line_length = off
trim_trailing_whitespace = false
```

### Golang
```
root = true

[*]
insert_final_newline = true
charset = utf-8
trim_trailing_whitespace = true
indent_style = space
indent_size = 2

[{Makefile,go.mod,go.sum,*.go,.gitmodules}]
indent_style = tab
indent_size = 4

[*.md]
indent_size = 4
trim_trailing_whitespace = false

eclint_indent_style = unset

[Dockerfile]
indent_size = 4
```
