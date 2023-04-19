## /etc/skel buildup

sudo rm -rf /tmp/skel
sudo cp -a skel /tmp

# microk8s examples
sudo cp -a microk8s /tmp/skel/

# zsh goodies
sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git /tmp/skel/.config/zsh/zsh-autosuggestions 
 
# pyenv
sudo git clone https://github.com/pyenv/pyenv.git /tmp/skel/.pyenv
sudo git clone https://github.com/pyenv/pyenv-virtualenv.git /tmp/skel/.pyenv/plugins/pyenv-virtualenv
 
# nvim sane starting point
sudo git clone https://github.com/nvim-lua/kickstart.nvim.git /tmp/skel/.config/nvim

# install /etc/skel
sudo rm -rf /etc/skel
sudo mkdir /etc/skel
sudo cp -a /tmp/skel /etc/
sudo rm -rf /tmp/skel
sudo chown -R root.root /etc/skel
