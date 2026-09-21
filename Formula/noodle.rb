class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.2/noodle-macos-arm64"
      sha256 "a1f9365a80570096da7737d91d19fbb4e2cf3f38c45b396c8124fbd3b6e52ab2" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.2/noodle-linux-arm64"
      sha256 "c15f2607569f3867715bb2b8aaed71ab7e5d94d88ee3ae858791b8bcd64c50f9" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.2/noodle-linux-x86_64"
      sha256 "1a25af5834b439bae58250bc453bffaff8588b7987e5e26849a7059445c763f9" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
