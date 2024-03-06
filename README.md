# THIS IS BROKEN AND I DO NOT INTEND ON FIXING IT.

# ambskit

A tweaked version of boxkit, made by Amber.

It is indended for my personal use but is open for others to use. I recommend forking the original repo and not this if you intend on making your own.

## How to use

### Create Box

If you use distrobox:

    distrobox create -i ghcr.io/amberwq/ambskit --init
    distrobox enter ambskit

### Using FISH

While this image comes with `fish`, it doesn't enable it out of the box (If you know how, please let me know!)
However, you can enable it by running

    chsh -s /usr/bin/fish

### Pull down your config

Use `chezmoi` to pull down your dotfiles and set up git sync.

### Make your own

Head to the upstream repo at the top of the page. You should fork that, not this fork.
