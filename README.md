# About

This is a basic Vim syntax highlighing file for PostgreSQL's output. It was written for use with [vim-pipe][vim-pipe].

# Installation

* Install Pathogen.
* Clone this project into `~/.vim/bundle/`.
* Set the filetype of the buffer to `postgresql.vim`. If you're using vim-pipe, you can use somethingl like this in your .vimrc:

```vim
	autocmd FileType sql :let b:vimpipe_command="psql mydatabase"
	autocmd FileType sql :let b:vimpipe_filetype="postgresql"
```

[vim-pipe]: https://github.com/krisajenkins/vim-pipe
