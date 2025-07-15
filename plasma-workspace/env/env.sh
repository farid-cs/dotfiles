cd "${HOME}/.config"
[ "$(git branch --show-current)" = "kde" ] && exit
git stash
git switch kde
