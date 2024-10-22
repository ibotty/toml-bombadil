VERSION=$1

cd ../packages/aur || exit
sed -i "s/pkgver=.*/pkgver=$VERSION/g" PKGBUILD
updpkgsums
makepkg --printsrcinfo > .SRCINFO
git add .
git commit -m "chore(aur): update aur package version to $VERSION"
