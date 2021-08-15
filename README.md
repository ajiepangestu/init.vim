# NeoVIM Configuration

a NeoVIM Configuration

![image](https://user-images.githubusercontent.com/10147928/129462212-c6cbba26-3c5b-48da-9753-ecbabbf2f7da.png)

## Plugin Supported

- ![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
- ![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
- ![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
- ![NodeJS](https://img.shields.io/badge/node.js-%2343853D.svg?style=for-the-badge&logo=node.js&logoColor=white)
- ![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
- ![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
- ![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
- ![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white)

## Requirement

- [Neovim (v0.5)](https://github.com/neovim/neovim/releases/tag/v0.5.0) or newer
- [vim-plug](https://github.com/junegunn/vim-plug)

## Editor Config

### JavaScript Standard

```editorconfig
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

```editorconfig
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

```editorconfig
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

