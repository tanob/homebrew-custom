require 'formula'

class Iulib < Formula
  homepage 'https://code.google.com/p/iulib/'
  head 'https://code.google.com/p/iulib/', :using => :hg

  depends_on 'scons' => :build

  def install
    system 'scons', "prefix=#{prefix}", 'install'
  end
end
