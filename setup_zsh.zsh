#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

if grep -Fxq '/usr/local/bin/zsh' '/etc/shells'; then
   echo '/usr/local/bin/zsh already exists in /etc/shells'
else
   echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

if [ "$SHELL" = '/usr/local/bin/zsh' ]; then
   echo '$SHELL is already /usr/local/bin/zsh'
else
   echo 'Enter user password to change login shell'
   chsh -s '/usr/local/bin/zsh'
fi

if sh --version | grep -q zsh; then
   echo '/private/var/select/sh already linked to /bin/zsh'
else
   echo 'Enter superuser (sudo) password to symlink sh to zsh'
   sudo ln -sfv /bin/zsh /private/var/select/sh
fi


echo "Enter superuser (sudo) password to symlink sh to zsh"
sudo ln -sfv /bin/zsh /private/var/select/sh