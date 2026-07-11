class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.1/noodle-macos-arm64"
      sha256 "b3397cdb2d1ebd3d950d06bb2d78d0098bc7ddb28b97f80d4e61814cacf541c3" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.1/noodle-linux-arm64"
      sha256 "8b6b3ae5f3a80b6f8c99810763ed6ab22bb0c80b36e47dc831512038890734d9" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.1/noodle-linux-x86_64"
      sha256 "13a865318da08b32f5ccda40663e378001c1d70284ca16d94c5fdf92caa4383c" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
