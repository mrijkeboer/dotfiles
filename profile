PATH=$HOME/.local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
export PATH HOME TERM
umask 027

if [ -x /usr/local/bin/nvim ]; then
    export EDITOR=/usr/local/bin/nvim
    alias vi=/usr/local/bin/nvim
elif [ -x /usr/local/bin/vim ]; then
    export EDITOR=/usr/local/bin/vim
    alias vi=/usr/local/bin/vim
else
    export EDITOR=/usr/bin/vi
fi

# Force emacs line editing after setting editor to vi/vim
set -o emacs

if [ "$TERM" = "xterm" ]; then
    if [ -z "$COLORTERM" ]; then
        case "$XTERM_VERSION" in
            XTerm/OpenBSD*)
                TERM="xterm-256color"
                ;;
            *)
                echo "Warning: Unrecognized XTERM_VERSION: $XTERM_VERSION"
                ;;
        esac
    else
        case "$COLORTERM" in
            "xfce4-terminal")
                TERM="gnome-256color"
                ;;
            "gnome-terminal")
                TERM="gnome-256color"
                ;;
            *)
                echo "Warning: Unrecognized COLORTERM: $COLORTERM"
                ;;
        esac
    fi
fi

