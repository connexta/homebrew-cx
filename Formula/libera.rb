class Libera < Formula
  desc "Multi-Release Automation Tool"
  homepage "https://github.com/connexta/libero.git"
  url "http://repo1.maven.org/maven2/com/connexta/libera/libera/1.0.1/libera-1.0.1.tar"
  sha1 "b3a866712d79d99c5e57c87db4691c517ee6071e"

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