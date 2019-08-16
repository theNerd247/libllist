{ stdenv, gcc }:

stdenv.mkDerivation
{
  name="libllist";
  src=./.;
  buildInputs = [ gcc ];
  installPhase=
  ''
    mkdir -p $out
    cp -r lib/ $out/lib
  '';
}
