class Libera < Formula
  desc "Multi-Release Automation Tool"
  homepage "https://github.com/connexta/libero.git"
  url "http://repo1.maven.org/maven2/com/connexta/libera/libera/1.1.0/libera-1.1.0.tar"
  sha256 "7fd57fb97e42161a1434a6e2d6a65d503cb740090d416dcae61c889cc94d9e24"

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
