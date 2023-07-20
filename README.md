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

### Pull down your config

Use `chezmoi` to pull down your dotfiles and set up git sync.

### Make your own

Head to the upstream repo at the top of the page. You should fork that, not this fork.

The user experience is much nicer if you [set your terminal open right in the container](https://distrobox.privatedns.org/useful_tips.html#using-distrobox-as-main-cli) and is the intended experience.
