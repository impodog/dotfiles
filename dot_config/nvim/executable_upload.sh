rm -r "$HOME"/Workspace/Nvim/nvim/*
cp -r "$HOME"/.config/nvim/* "$HOME"/Workspace/Nvim/nvim/ || exit
curdir="$(pwd)"
cd "$HOME/Workspace/Nvim/nvim" || exit
git add .
git commit
git push
cd "$curdir" || exit
