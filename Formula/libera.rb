class Libera < Formula
  desc "Multi-Release Automation Tool"
  homepage "https://github.com/connexta/libero.git"
  url "http://repo1.maven.org/maven2/com/connexta/libera/libera/1.1.1/libera-1.1.1.tar"
  sha256 "93a81290b66263fc6cfc2454ab6eef660bd996bec69170ec00afd8ae4aa303f0"

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
    system "#{bin}/libera", "-h"
  end
end
