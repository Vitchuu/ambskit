FROM quay.io/toolbx-images/archlinux-toolbox

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience"

RUN pacman -Syu --noconfirm && \
      pacman -S --noconfirm \
            btop \
            bat \
            chezmoi \
            lf \
            lazygit \
            helix \
            npm \
            ripgrep \
            rustup \
            starship \
            wl-clipboard \
            zellij \
            zsh \
            zoxide \
            typescript \
            typescript-language-server \
            svelte-language-server \
            vscode-css-languageserver \
            vscode-html-languageserver \
            vscode-json-languageserver \
            marksman \
            prettier && \
                  npm i -g \
                  @olrtg/emmet-language-server \
                  @prisma/language-server \
