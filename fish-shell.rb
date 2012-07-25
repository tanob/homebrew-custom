require 'formula'

class FishShell < Formula
  homepage 'http://ridiculousfish.com/shell/'

  head 'git://github.com/fish-shell/fish-shell.git'

  depends_on 'doxygen'
  depends_on 'autoconf' => :build if MacOS.xcode_version.to_f >= 4.3 and ARGV.build_head?
  depends_on 'readline'

  skip_clean 'share/doc'

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}", "--without-xsel", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end

  def test
    system "fish --version"
  end
end

