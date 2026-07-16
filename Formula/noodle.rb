class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.6/noodle-macos-arm64"
      sha256 "d445a379fffe1f40e18e86023085d3f734758af47b0822ec4f9edca9bd28160a" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.6/noodle-linux-arm64"
      sha256 "65e2275fd1e003ec59eeeba397e1257ab310bc123886e9f9216ce0c61db081e6" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.6/noodle-linux-x86_64"
      sha256 "2198ef029e85e71b2ea249cef5485a666250ab60ee764ee9685fab71c1b2c650" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
