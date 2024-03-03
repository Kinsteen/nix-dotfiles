{
  enable = true;
  enableAutosuggestions = true;
  enableCompletion = true;
  syntaxHighlighting.enable = true;
  initExtra = ''
    export PATH=$HOME/.nix-profile/bin:$PATH
  '';
  shellAliases = {
    ls = "eza";
    ll = "eza -lah";
  };
  # initExtraFirst ="export ZSH=$HOME/.oh-my-zsh";
  oh-my-zsh = {
    enable = true;
    custom = "$HOME/.oh-my-zsh";
    plugins = [
      "git"
      # "zsh-autosuggestions"
      # "zsh-syntax-highlighting"
    ];
    extraConfig = ''
      zstyle ':completion:*' rehash true
    '';
  };
}
