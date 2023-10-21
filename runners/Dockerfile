FROM summerwind/actions-runner:v2.310.2-ubuntu-22.04-e10a1cc

# Install all tools needed to run workflows
RUN sudo apt update && \
    sudo apt install -y \
      alsa-utils \
      clang \
      cmake \
      git-lfs \
      graphviz \
      jq \
      libc6-dev \
      libprotobuf-dev \
      libssl-dev \
      libudev-dev \
      llvm \
      musl-tools \
      openssl \
      pkg-config \
      protobuf-compiler \
      rust-all \
      zip \
      zstd

#RUN ./install-rust.sh
