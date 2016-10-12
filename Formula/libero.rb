class Libero < Formula
  desc "Release Automation Tool"
  homepage "https://github.com/connexta/libero.git"
  url "http://repo1.maven.org/maven2/com/connexta/libero/distribution/libero-distribution/1.1.1/libero-distribution-1.1.1.tar"
  sha256 "b532ed025f7acc5223cad999ba53138d0998b1c0cf6b8fc03c2d7d81d6403b8a"

  bottle :unneeded

  def install
    libexec.install %w[bin lib]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<-EOS.undent
      You should set M2_HOME:
        export M2_HOME=#{opt_libexec}
    EOS
  end

  test do
    system "#{bin}/libero", "-h"
  end
end
