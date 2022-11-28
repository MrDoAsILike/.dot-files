{ pkgs, ... }:

{
  ...

  programs.fish.enable = true;

  users.users.<ohryx> = {   
    ...  
    shell = pkgs.fish;
    ...
  };
}