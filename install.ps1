Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

git config set color.status.add 'green bold'
git config set color.status.changed 'red bold'
git config set color.status.untracked 'red bold'
git config set color.diff.old 'red bold'