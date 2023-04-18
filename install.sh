

# install /etc/skel
sudo rm -rf /etc/skel
sudo mkdir /etc/skel
sudo cp -a skel/ /etc/
sudo chown -R root.root /etc/skel
