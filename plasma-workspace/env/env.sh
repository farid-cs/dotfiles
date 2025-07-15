cd "${HOME}/.config"
[ "$(git branch --show-current)" = "kde" ] && exit
git clean -fd
git stash
git switch kde
