# dotfiles
### .zshrc
shellの設定ファイルに以下を記述
```~/.bashrc
export XDG_CONFIG_HOME=~/dotfiles/.config
```
もし.bashrcが読み込まれなければターミナル起動時に.bashrcを読み込むように以下を記述
```~/.bash_profile
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
```
