# Path to Oh My Fish install.
set -gx OMF_PATH "/home/beard/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/beard/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

for file in ~/.config/fish/conf.d/*.fish
    source $file
end

# note: this erases the default fish_mode_prompt, which adds a vi mode
# indicator to the left of your prompt
function fish_mode_prompt; end

# turn on vi mode when the shell starts
fish_vi_mode

set -x PATH "/home/beard/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)


eval (python -m virtualfish)
eval (python -m virtualfish compat_aliases)
eval (python -m virtualfish auto_activation global_requirements)
