#!/bin/bash -e
################################################################################
##  File:  rust.sh
##  Desc:  Installs Rust
##
##  Taken from https://github.com/actions/runner-images/blob/main/images/linux/scripts/installers/rust.sh
################################################################################

export RUSTUP_HOME=/etc/skel/.rustup
export CARGO_HOME=/etc/skel/.cargo

curl -fsSL https://sh.rustup.rs | sh -s -- -y --default-toolchain=stable --profile=minimal

# Initialize environment variables
source $CARGO_HOME/env

# Install common tools
rustup component add rustfmt clippy

# Ubuntu 22
cargo install bindgen-cli cbindgen cargo-audit cargo-outdated

# Cleanup Cargo cache
rm -rf ${CARGO_HOME}/registry/*

# Update /etc/environemnt
echo PATH="$HOME/.cargo/bin/":PATH > /etc/environment

