FROM quay.io/toolbx-images/archlinux-toolbox

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience"

RUN pacman -Syu --noconfirm && \
      pacman -S --noconfirm \
            bat \
            btop \
            chezmoi \
            helix \
            lazygit \
            lf \
            lua-language-server \
            marksman \
            npm \
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
            zsh && \
            && \

      npm i -g \
            @olrtg/emmet-language-server \
            @prisma/language-server \
