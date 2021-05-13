#!/bin/bash

hw=$1

case $hw in
"hw_01")
  echo "Installation $hw"
  sudo apt update
  sudo apt install mc ansible -y
  git clone https://github.com/alexkonkin/gl_hw.git
  cd ./gl_hw/provisioners/$hw
  ansible-playbook --vault-password-file="./vault_pass.txt" --extra-vars="@variables.yml" playbook.yml
  ;;
*)
  echo "incorrect option selected..."
  ;;
esac
