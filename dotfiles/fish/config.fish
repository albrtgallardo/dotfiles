set fish_greeting ""
set -gx PATH $PATH /usr/local/bin


if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
    exec Hyprland
end


oh-my-posh init fish --config ~/.poshthemes/gruvbox.omp.json | source
export PATH="$HOME/.local/bin:$PATH"
