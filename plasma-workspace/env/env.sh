cd "${HOME}/.config"
[ "$(git branch --show-current)" = "kde" ] && exit
git stash -u
git switch kde
