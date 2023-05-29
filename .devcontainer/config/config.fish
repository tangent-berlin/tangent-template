# Disable greeting
set -g fish_greeting

set -gx HOME "/root"
set -gx XDG_CONFIG_HOME "/root/.config"
set -gx XDG_CACHE_HOME "/root/.cache"
set -gx INSTALLDIR "/opt"

set --export PATH "$INSTALLDIR/cargo/bin" $PATH
set --export PATH "$INSTALLDIR/poetry/bin" $PATH
set --export PATH "$INSTALLDIR/bun/bin" $PATH

function ls
    lsd
    #python3 /usr/local/bin/lsicons.py
end

function l
    lsd -l
end

function la
    lsd -a
end

function lla
    lsd -la
end

function lt
    dust; and tokei
end

if status is-interactive
    starship init fish | source
    fzf_configure_bindings --variables=\e\cr
    atuin init fish | source
    carapace _carapace fish | source
end
