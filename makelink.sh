#!/bin/sh

cd ${HOME}

for DOT_FILE in `ls -A1 dotfiles`; do
  if [ ! ${DOT_FILE} = makelink.sh ]; then
    if [ ! -L ${DOT_FILE} ] && [ ! -e ${DOT_FILE} ]; then
      ln -s ${HOME}/dotfiles/${DOT_FILE} ${HOME}/${DOT_FILE}
    fi
  fi
done

