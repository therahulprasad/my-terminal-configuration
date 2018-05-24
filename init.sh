sudo apt install -y zsh git byobu
# Change shell to zsh first so that oh-my-zsh wont ask for password
sudo chsh -s /bin/zsh $USER
# Install Oh My zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Fuzzy finder from https://github.com/junegunn/fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc
