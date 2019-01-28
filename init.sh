sudo apt install -y zsh git byobu
# Change shell to zsh first so that oh-my-zsh wont ask for password
sudo chsh -s /bin/zsh $USER
# Install Oh My zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Fuzzy finder from https://github.com/junegunn/fzf
ls $HOME/.fzf || (git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf && $HOME/.fzf/install --key-bindings --completion --update-rc)
# Configure zsh in byobu
ls $HOME/.byobu/ || mkdir $HOME/.byobu
grep /bin/zsh $HOME/.byobu/.tmux.conf || (echo "set -g default-shell /bin/zsh" >> $HOME/.byobu/.tmux.conf; echo "set -g default-command /bin/zsh" >> $HOME/.byobu/.tmux.conf)
# Configure z
ls $HOME/z.sh || (wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O $HOME/z.sh && chmod +x $HOME/z.sh)
grep z.sh $HOME/.zshrc || echo ". $HOME/z.sh" >> $HOME/.zshrc
