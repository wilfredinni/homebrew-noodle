class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.8.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.6/noodle-macos-arm64"
      sha256 "d1c2c15316b7f320b630393e90d89770c1abf916a5bc1d76611339ccf0d744b9" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.6/noodle-linux-arm64"
      sha256 "027355b6250577fca11d6f963dcbc505c31761f875c39a43fce14f1ea5287a8b" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.6/noodle-linux-x86_64"
      sha256 "ec4c3835f5b13838dda2f3938a533e3b49dfef1d55b43b7b7c6986e961b5e08f" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
