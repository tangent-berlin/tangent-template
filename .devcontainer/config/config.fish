# Disable greeting
set -g fish_greeting

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
