pkgname=libllist
pkgver=0.0.2
pkgrel=1
pkgdesc="A C library for linked lists"
arch=('i686' 'x86_64')
url=https://www.github.com/theNerd247/libllist
license=('GPL')
source=("https://github.com/theNerd247/libllist/raw/master/$pkgname-$pkgver.tar.gz")
md5sums=('a5340b2021d64db5911a477bb3d4ff08 ')

build()
{
	cd "$srcdir/$pkgname-$pkgver"
	make
}

package()
{
	cd "$srcdir/$pkgname-$pkgver"
	make DESTDIR="$pkgdir" install
}
