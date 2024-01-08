FROM quay.io/toolbx-images/archlinux-toolbox

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience"

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
            rustup \
            starship \
            svelte-language-server \
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
            @prisma/language-server \
