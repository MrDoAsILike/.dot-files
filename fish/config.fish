if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Enables StarShip
starship init fish | source

# Removes Fish Welcome Greeting
set fish_greeting
status --is-login; and status --is-interactive; and exec byobu-launcher