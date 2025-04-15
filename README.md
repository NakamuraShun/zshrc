# 準備

- `ghq + peco` がインストールされていることが前提
- `Documents/workspace/`を作成しghqのrootを以下にする

```zsh
git config --global ghq.root '~/Documents/workspace'
```

- このリポジトリをcloneする

# セットアップ

## PC移行した場合

1. Oh My Zsh!をインストールする

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. .zshrcがの中身がにOh My Zsh用になるので、削除してからこのリポジトリの.zshrcのシンボリックリンクに差し替える

```zsh
rm ~/.zshrc
ln -s ~/Documents/workspace/github.com/NakamuraShun/zshrc/.zshrc ~/.zshrc
```

3. 一旦更新する

```zsh
source ~/.zshrc
```

4. Powerline fontをインストールする(以下をまるっとターミナルに張り付ければOK)

```zsh
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

5. TerminalのFont設定を変更する

![image](https://github.com/user-attachments/assets/dab12384-9389-4011-a151-e28ef01430e6)

5. 念のため更新する

```zsh
uz
```

