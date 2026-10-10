# NixOS Configuration

My personal NixOS configuration managed with Nix flakes and Home Manager.

This repository contains my system configuration, user environment settings, and other Nix-related files. It is continuously evolving as I learn and customize my setup.

## Requirements

- NixOS
- Nix flakes enabled

## Usage

Clone the repository:

```bash
git clone git@github.com:DangNH1652005/my-nixos-config.git
cd my-nixos-config
```

Apply the configuration:

```bash
sudo nixos-rebuild switch --flake .#yamabuki
```

Replace `yamabuki` with your NixOS hostname if necessary.

## Note

This configuration is tailored to my personal machine and may require modifications before being used on other systems.
