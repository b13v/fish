#!/usr/bin/env fish

if test -z $ZELLIJ && ! zellij ls
  zellij
else
  zellij attach (zellij ls | string split ' ' | sk --layout=reverse --height=25% --header='Please choose the zellij session:')
end
