class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.8.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.7/noodle-macos-arm64"
      sha256 "2972f897b25a5f9026e9db10dab3231e7e3800f1c0566e72bbde9716e9658125" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.7/noodle-linux-arm64"
      sha256 "378e5878f9ccfb5e386924e4d2d8532b16d3105c84915f05834a7c50df74d1f1" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.7/noodle-linux-x86_64"
      sha256 "f1ece2666c79054f6f6c120d1efb7b08b1660dddca5c2b6638f3a5a9bbc4ad04" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
