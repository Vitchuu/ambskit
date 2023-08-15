# ambskit

A tweaked version of boxkit, made by Amber.

It is indended for my personal use but is open for others to use. I recommend forking the original repo and not this if you intend on making your own.

## How to use

### Create Box

If you use distrobox:

    distrobox create -i ghcr.io/vitchuu/ambskit
    distrobox enter ambskit

If you use toolbx:

    toolbox create -i ghcr.io/vitchuu/ambskit
    toolbox enter ambskit

### Using ZSH

While this image comes with ZSH, it doesn't enable it out of the box (If you know how, please let me know!)
However, you can enable it by running

    chsh -s /bin/zsh

### Pull down your config

Use `chezmoi` to pull down your dotfiles and set up git sync.

### Make your own

Head to the upstream repo at the top of the page. You should fork that, not this fork.

The user experience is much nicer if you set your terminal to open right in the container and is the intended experience. You can do this by applying it in a setting in your terminal (Black Box and Gnome Terminal have this functionality for example) or in your `.bashrc`.
