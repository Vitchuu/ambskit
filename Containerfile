FROM quay.io/toolbx-images/archlinux-toolbox

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience"

RUN pacman -Syu --noconfirm && \
      pacman -S --noconfirm \
            btop \
            bat \
            chezmoi \
            direnv \
            ffmpeg \
            lf \
            lazygit \
            neofetch \
            npm \
            ripgrep \
            rustup \
            starship \
            wl-clipboard \
            zellij \
            zsh \
            zoxide
