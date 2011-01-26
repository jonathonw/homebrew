require 'formula'

class Gsoap <Formula
  url 'http://downloads.sourceforge.net/project/gsoap2/gSOAP/gsoap_2.7.17.zip'
  homepage 'http://www.cs.fsu.edu/~engelen/soap.html'
  md5 '6f58cabfc67b4d5eafd1a30057fc4343'
  
  def skip_clean? path
    true
  end

  def install
    ENV.deparallelize
    ENV.no_optimization
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
