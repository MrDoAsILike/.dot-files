{ config, pkgs, ... }:

# let
#  doom-emacs = pkgs.callPackage (builtins.fetchTarball {
#        url = https://github.com/nix-community/nix-doom-emacs/archive/master.tar.gz;
#    }) {
#        doomPrivateDir = ./doom.d;  # Directory containing your config.el init.el
#                                    # and packages.el files
#      };
#in {
#      home.packages = [ doom-emacs ];
#  }
 
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "orix";
  home.homeDirectory = "/home/orix";

  # Packages that should be installed to the user profile.
  home.packages = [


# Channel Upgrades
  system.autoUpgrade.channel = https://nixos.org/channels/nixos-22.05;

# Adding/Changing to Fish shell #######
  users.defaultUserShell = pkgs.fish;
  environment.shells = with pkgs; [ fish ];

# Shells ##############################
    pkgs.fish
    pkgs.starship

# Fonts ###############################
    pkgs.nerdfonts
    meslo-lgs-nf

  # CLI File Managers #################
    pkgs.lf

  # Shell Tools #######################
    pkgs.bpytop
    pkgs.curl
    pkgs.direnv
    pkgs.wget
    pkgs.fzf
    pkgs.git
    pkgs.bat
    pkgs.bat-extras.prettybat
    pkgs.exa
    pkgs.ripgrep-all
    pkgs.xclip
    pkgs.fd

  # Terminals #########################
    # Alacritty #######################
    pkgs.alacritty

    # Kitty ###########################
    pkgs.kitty
    pkgs.kitty-themes
    pkgs.python310Packages.pixcat

    # Terminal Multiplexer Tools ######
    pkgs.tmux
    pkgs.tmate
    pkgs.byobu


# TEXT Editor/IDE #####################
  # Helix #############################
        pkgs.helix
  # Micro #############################
    pkgs.micro
  # VSCode ############################
    pkgs.vscode
  # Emacs/Doom ########################
    pkgs.emacs
   # pkgs.emacs28Packages.doom
    pkgs.emacs28Packages.xclip
    
  # Compression Tools #################
    pkgs.zip
    pkgs.p7zip
    pkgs.zstd
    pkgs.libzra
    pkgs.python310Packages.zstandard

  # QT5/6 #############################
    pkgs.qt5Full


# Web Browser##########################
  # Vivaldi ###########################
        pkgs.vivaldi
        pkgs.vivaldi-widevine
        pkgs.vivaldi-ffmpeg-codecs


# Window Manager/Desktop
  # Awesome ###########################
        pkgs.awesome

# Ofiice Tools ########################
    pkgs.libreoffice-fresh

# Social/Communications Tools #########
    pkgs.discord

# Multimedia ##########################
    pkgs.vlc

# Wallpaper Tools

  ];

  
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
 
