# git-gen
an oh-my-zsh  plugin for handling bulk deletion and creation of branches.
Actually for my self, every week I create and remove a batch of branches. then I wrote functions as a plugin for ZSH.
Enjoy it!



## How to use
it is easy if you are using **oh-my-zsh**.
in your terminal:
```
cd $HOME/.oh-my-zsh/custom/plugins
```
then
```
git clone https://github.com/sharif3271/git-gen.git
```
then edit .zshrc on ```$HOME/.zshrc```

```
plugins=(
  .
  .
  .
  git-gen
)

```
Done!!




## examples

make_branches source-branch my-branch1 my-branch2 my-branch3 ...

```
make_branches master T22-sample-1 T22-sample-2
```

and for deleting:
```
delete_branches T22-sample-1 T22-sample-2
```
