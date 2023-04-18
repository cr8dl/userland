## /etc/skel buildup

rm -rf /tmp/skel
cp -a skel /tmp

# zsh goodies
git clone https://github.com/zsh-users/zsh-autosuggestions.git /tmp/skel/.config/zsh/zsh-autosuggestions 

# pyenv
git clone https://github.com/pyenv/pyenv.git /tmp/skel/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git /tmp/skel/.pyenv/plugins/pyenv-virtualenv

# nvim sane starting point
git clone https://github.com/nvim-lua/kickstart.nvim.git /tmp/skel/.config/nvim

# install /etc/skel
sudo rm -rf /etc/skel
sudo mkdir /etc/skel
sudo cp -a /tmp/skel /etc/
sudo rm -rf /tmp/skel
sudo chown -R root.root /etc/skel
