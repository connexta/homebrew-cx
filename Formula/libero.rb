class Libero < Formula
  desc "Release Automation Tool"
  homepage "https://github.com/connexta/libero.git"
  url "http://repo1.maven.org/maven2/com/connexta/libero/distribution/libero-distribution/1.0.1/libero-distribution-1.0.1.tar"
  sha256 "7c5762f6434d5714d5e9ba03c2fb4f9a95dec2cd184b6db89a0718b088c918f5"

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
