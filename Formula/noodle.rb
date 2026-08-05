class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.0/noodle-macos-arm64"
      sha256 "89e79b086dbc802a57f144991c0325106c7bd972af06bc8bd1b1d7c7fe7e9e9c" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.0/noodle-linux-arm64"
      sha256 "f80bd978e1ecf5843ca37f3fdf517be4ac3370f8f70174ff85b9ab58e4eea221" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.0/noodle-linux-x86_64"
      sha256 "9ae1c4f3d19dad095dae7cce4a5ab22b51d1bf53a5fb58a584bb0a1cbafbf2d6" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
