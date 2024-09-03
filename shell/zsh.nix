{ pkgs, ... }:
let
  # My shell aliases
  myAliases = {
    e = "exit";
    nvim = "nix develop ~/code/rust/.dotfiles/ --extra-experimental-features \"nix-command flakes\" --command nvim -u ~/code/rust/.dotfiles/init.lua";
  };
in
{

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    shellAliases = myAliases;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
    };
  };
}
