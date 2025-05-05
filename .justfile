# ZAIN CONFIG FILE, IGNORE THIS AWAWAWAWA

_default: help

[group("Help")]
[doc("List all recipes (or just run `just`).")]
help:
    @just --list --unsorted





## For more info on `nix develop`, see: https://nix.dev/manual/nix/2.18/command-ref/new-cli/nix3-develop.html
## > `nix develop` - run a bash shell that provides the build environment of a derivation
## The next two commands (`activate` and `deactivate` devshell) are based on the assumption that if $SHLVL > 1 then we're already in a nix interactive development shell. See more discussion in the following two links:
## [1] https://discourse.nixos.org/t/custom-prompts-or-shell-depth-indicator-for-nix-shell-nix-develop/29942
## [2] https://github.com/NixOS/nix/issues/6677

shlvl := env('SHLVL', '-1')
## ^ We have to access the user's SHLVL like this because entering a justfile increments SHLVL

user_shell := env('SHELL', '/bin/sh')


[group("Development shell via Nix package manager")]
[doc("Activate interactive development shell with uv (remember to `exit` when done) — we recommend getting into the habit of using this recipe over plain `nix develop` since it incorporates guard rails against entering multi-nested devshells.")]
activate-devshell:
    #!/usr/bin/env bash
    set -euo pipefail
    # Error: $SHLVL doesn't exist
    if [ "{{shlvl}}" -eq -1 ]; then
        echo "ERROR: Environment variable \$SHLVL not found, this is unexpected, not sure what to do."
        echo "Exiting without any changes."
        exit
    fi
    # Error: Already in dev shell
    if [ "{{shlvl}}" -gt 1 ]; then
        echo "ERROR: You are already in an interactive development shell."
        echo "Exiting without any changes."
        exit
    fi
    # Activate environment while keeping the user's shell
    nix develop -c {{user_shell}}

[group("Development shell via Nix package manager")]
[doc("Update flake. (check for `uv` updates in nixpkgs here: https://github.com/NixOS/nixpkgs/blob/nixpkgs-unstable/pkgs/by-name/uv/uv/package.nix )")]
update-flake:
    nix flake update
