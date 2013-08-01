pkgname=libllist
pkgver=0.0.2
pkgrel=1
pkgdesc="A C library for linked lists"
arch=('i686' 'x86_64')
url=https://www.github.com/theNerd247/libllist
license=('GPL')
source=("https://github.com/theNerd247/libllist/raw/master/$pkgname-$pkgver.tar.gz")
md5sums=('cd21b669bc6d9fd5433154637efc28b7')

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
