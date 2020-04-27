function __fish_ebm_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

complete -f -c efibootmgr -n '__fish_ebm_using_command --bootnext' -a "(efibootmgr | grep Boot0 | sed 's/* /\t/' | sed 's/Boot//')"
