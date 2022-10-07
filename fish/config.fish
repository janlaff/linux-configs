# Enable vi keybindings
fish_hybrid_key_bindings

# Add cargo binaries to path
fish_add_path $HOME/.cargo/bin

# Set fish theme
fish_config theme choose Nord

# Default editor
set -gx EDITOR vim
