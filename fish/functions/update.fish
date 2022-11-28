function update --wraps='sudo hx nixos-rebuild switch --upgrade-all' --wraps='sudo nixos-rebuild switch --upgrade-all' --description 'alias update sudo nixos-rebuild switch --upgrade-all'
  sudo nixos-rebuild switch --upgrade-all $argv; 
end
