
echo "Step 1: oh-my-zsh install"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Step 2: kubectl install"
# Following this documentation: https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/
brew install kubectl

echo "Step 3: install lsd"
brew install lsd

echo "Step 4: Move configuration files"
mv alias.sh ~/.config/
mv gitconfig ~/.gitconfig

echo "Step 5: Create & Run zshrc" 
mv zshrc ~/.zshrc
source ~/.zshrc
