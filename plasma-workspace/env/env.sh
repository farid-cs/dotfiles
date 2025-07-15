cd "${HOME}/.config/"
[ "$(git branch --current)" = "kde" ] && exit
git stash
git switch kde
