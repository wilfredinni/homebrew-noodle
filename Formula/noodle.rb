class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.1/noodle-macos-arm64"
      sha256 "24c24a48eff91f6279367d200913429ea750be559d7bfc3c4a1fc920be9ec58c" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.1/noodle-linux-arm64"
      sha256 "4350e239be10885cdd499096c0a4d53697da2bc017ee636f4c288d35b74ad7c6" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.1/noodle-linux-x86_64"
      sha256 "9ad39b8817a2b95d8c5aa0df3490db66c5d2bbff650c8371e5c01a123742d603" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
