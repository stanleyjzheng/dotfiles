# dotfiles (probably just for me)

- `.zshrc` is the zsh config file I use
- `nvidia.sh` installs nvidia utilities, mainly cudatk, cudnn, etc.
- `apt.sh` installs apt repositories and programs
- `otherinstall.sh` installs other programs which don't have apt repos, such as anaconda, ohmyzsh, etc.
- `settings.json` is from VSCode
- `config.cson` is from Atom

### Missing
- Non-PoP distros may need repositories to be added, and I might have missed repositories in general
- Slack
- Microsoft teams
- Spicetify automatically
- Betterdiscordctl automatically
- Gnome tweaks automatically

### Nvidia
How to install CUDA/cuDNN for Tensorflow or PyTorch on PoP OS
1. If this isn't a fresh install, make sure you are using the correct Pop drivers using `sudo apt install system76-nvidia-drivers` and if it is a fresh install, this step is already done.
2. Install Nvidia CUDA toolkit from Pop with the following command: `sudo apt install system76-cuda-latest` Look for the version you have installed (currently 10.2 but CHECK)
3. Install the corresponding cuDNN from Pop repository with `sudo apt install system76-cudnn-10.2`
4. Install tensorflow with `pip install tensorflow`
5. Test your GPU with `tf.test.is_gpu_available()`. If it returns `True`, you are done. If it does not, look at the traceback call, you screwed up somewhere. Good troubleshooting steps are `nvcc -V` and google, as always.
