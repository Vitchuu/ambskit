FROM quay.io/toolbx-images/archlinux-toolbox

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience"

RUN sed -i 's/#Color/Color/g' /etc/pacman.conf && \
    printf "[multilib]\nInclude = /etc/pacman.d/mirrorlist\n" | tee -a /etc/pacman.conf && \
    sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j$(nproc)"/g' /etc/makepkg.conf && \
    pacman -Syu --noconfirm && \
    pacman -S \
        wget \
        base-devel \
        git \
        --noconfirm && \
    useradd -m --shell=/bin/bash build && usermod -L build && \
    echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN pacman -Syu --noconfirm && \
      pacman -S --noconfirm \
            alsa-lib \
            bat \
            btop \
            chezmoi \
            fish \
            helix \
            lazygit \
            lf \
            libx11 \
            libxcursor \
            libxi \
            libxkbcommon \
            libxrandr \
            lua-language-server \
            marksman \
            npm \
            pipewire-alsa \
            pkgconf  \
            prettier \
            ripgrep \
            rust-analyzer \
            rustup \
            starship \
            svelte-language-server \
            systemd \
            typescript \
            typescript-language-server \
            vscode-css-languageserver \
            vscode-html-languageserver \
            vscode-json-languageserver \
            wl-clipboard \
            zellij \
            zoxide \
            && \

      npm i -g \
            @olrtg/emmet-language-server \
            @prisma/language-server


USER build
WORKDIR /home/build
RUN git clone https://aur.archlinux.org/paru-bin.git --single-branch && \
    cd paru-bin && \
    makepkg -si --noconfirm && \
    cd .. && \
    rm -drf paru-bin && \
    paru -S \
        aur/omnisharp-roslyn \
        --noconfirm
USER root
WORKDIR /
