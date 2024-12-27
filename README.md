# dots

Dotfiles managed using stow

- Viewing the symlinks that will be created

```sh
stow -n -v --no-folding .
```

- Creating the symlinks

```sh
stow -v --no-folding .
```

- Deleting the symlinks

```sh
stow -D .
```
