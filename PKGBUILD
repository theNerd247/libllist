pkgname=libllist
pkgver=0.0.2
pkgrel=1
pkgdesc="A C library for linked lists"
arch=('i686','x86_64')
url=https://www.github.com/theNerd247/libllist
license=('GPL')
source=("https://www.github.com/theNerd247/libllist/$pkgname-$pkgver.tar.gz")
md5sums=('a6eec95fb7c498b7008ab5f769b9834a')

build()
{
	cd "$srcdir/$pkgname-$pkgver"
	make
}

package()
{
	make DESTDIR="$pkgdir" install
}
