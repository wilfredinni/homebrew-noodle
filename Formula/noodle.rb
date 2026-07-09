class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.3/noodle-macos-arm64"
      sha256 "31f4efd06dc69438fa71d5c4667cf5d0dd1738d626f3f2f778f75860a4abc859" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.3/noodle-linux-arm64"
      sha256 "414245665120a6ab0e7d76b874adc0ae1f42d995f87e184c64eb80fabfc5b401" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.3/noodle-linux-x86_64"
      sha256 "2e4d035bed3d43a8522a1fc588cd842ff30bc318be0953ae25d1705f60a11d7e" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
