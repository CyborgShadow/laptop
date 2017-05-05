#!/bin/bash

pip_install_or_update() {
  if pip list | grep "^$1 ("; then
    fancy_echo "Updating %s ..." "$1"
    pip install --upgrade "$@"
  else
    fancy_echo "Installing %s ..." "$1"
    pip install "$@"
  fi
}

pip_install_or_update 'pyyaml'
