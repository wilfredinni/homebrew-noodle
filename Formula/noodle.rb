class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.8.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.3/noodle-macos-arm64"
      sha256 "fe7a9b2bea20b1c3cddf34f4fbbd5e36f95ce5c183de8108beb59da1c87fa25d" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.3/noodle-linux-arm64"
      sha256 "40a9b88a8ec6530a45953e9794e23d586cc686094ffdb9441c845d31ffc7d36f" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.3/noodle-linux-x86_64"
      sha256 "77c73c97e99df4c23d6ea57d84d12a2a26f486726b1dd840d955307aaf02f86d" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
