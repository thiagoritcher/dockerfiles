apt update
apt install -y  git xclip xz-utils gcc g++ curl fzf wget python3 pip unzip

cd /opt
wget https://github.com/neovim/neovim/releases/download/v0.9.4/nvim-linux64.tar.gz
tar -xvf nvim-linux64.tar.gz
rm -f /opt/nvim-linux64.tar.gz
echo 'export PATH=$PATH:/opt/nvim-linux64/bin/' >> /root/.bashrc

wget https://nodejs.org/dist/v18.15.0/node-v18.15.0-linux-x64.tar.xz /opt
tar -xvf node-v18.15.0-linux-x64.tar.xz
rm -f /opt/node-v18.15.0-linux-x64.tar.xz
echo 'export PATH=$PATH:/opt/node-v18.15.0-linux-x64/bin/' >> /root/.bashrc

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
echo 'export PATH=$PATH:/root/.local/bin' >> /root/.bashrc

source /root/.bashrc
#npn install -g neovim
