FROM debian:bullseye-slim
ARG DEBIAN_FRONTEND=noninteractive
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -qqy \
    build-essential gdb git cmake \
    clang lld \
    binutils-multiarch-dev \
    g++-aarch64-linux-gnu \
    fish \
    qemu-user-static \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

USER vscode
RUN echo "alias aarch64-clang='clang -target aarch64-linux-gnu --sysroot=/usr/aarch64-linux-gnu -fuse-ld=lld'" >> /home/$USERNAME/.bashrc
RUN mkdir -p /home/$USERNAME/.config//fish/ && touch /home/$USERNAME/.config//fish/config.fish
RUN echo "alias aarch64-clang='clang -target aarch64-linux-gnu --sysroot=/usr/aarch64-linux-gnu -fuse-ld=lld'" >> /home/$USERNAME/.config//fish/config.fish
ENV QEMU_LD_PREFIX=/usr/aarch64-linux-gnu