class Libero < Formula
  desc "Release Automation Tool"
  homepage "https://github.com/connexta/libero.git"
  url "http://repo1.maven.org/maven2/com/connexta/libero/distribution/libero-distribution/1.1.0/libero-distribution-1.1.0.tar"
  sha256 "ffd274f49e59e75a47f190433cd48db6369a83d4b33031a920902084d8052871"

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
