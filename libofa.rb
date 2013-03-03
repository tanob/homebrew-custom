require 'formula'

class Libofa < Formula
  homepage 'https://github.com/tanob/libofa'
  head 'git://github.com/tanob/libofa.git'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
