require 'formula'

class LatestVim < Formula
  head 'https://vim.googlecode.com/hg/', :using => :hg

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--enable-cscope",
                          "--enable-rubyinterp", "--enable-multibyte",
                          "--enable-pythoninterp", "--with-features=big"
    system "make install"
    ln_s "#{bin}/vim", "#{bin}/vi"
  end

  def test
    system "#{bin}/vim"
  end
end
