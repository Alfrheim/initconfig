# Config files for nixos

# How to run
  - Make changes in the config files.
  - Move files to /etc/nixos/
  - Try the config running:
```
cp *.nix /etc/nixos/
nixos-rebuild switch
```
How to check changes:
```
$ diff -p /etc/nixos/ .
```

# TODO
  - Create script to copy files to /etc/nixos/
  - remove nvidia configuration
  - add configuration for dual boot
  - add configuration for encrypted disk
  - find alternative to copy files (see rsync)


