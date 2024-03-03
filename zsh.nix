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

  oh-my-zsh = {
    enable = true;
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
