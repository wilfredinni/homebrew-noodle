class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.2/noodle-macos-arm64"
      sha256 "7a45d4d6d7963954d04f8ac54558c0512a1b321577a75117d9bec520c7c24d0f" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.2/noodle-linux-arm64"
      sha256 "84ae7b1fb621d339fc7ec39e55157cf84154c2c5cfbc006a529b854db4fddbfa" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.2/noodle-linux-x86_64"
      sha256 "525677da15241ee8cce2caacbbc5200dd6ab0eb473965c107bf299fc1de4ff4a" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
