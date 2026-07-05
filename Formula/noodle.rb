class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.2.1/noodle-macos-arm64"
      sha256 "3d8546aba2383586c2d11bb511a64c99994f2d3dd7d7fec67a6bad0b3205f115" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.2.1/noodle-linux-arm64"
      sha256 "3b7aa444b0713c5bf005d8c9f5d0ea303d9f7607aaebfb9f50d715cf706a8219" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.2.1/noodle-linux-x86_64"
      sha256 "635f7f87532d143b329fabcabeededb280b95e9aee823a7c9792fc6316fd9025" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
