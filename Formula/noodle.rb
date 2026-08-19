class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.7.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.7/noodle-macos-arm64"
      sha256 "0368a129e02910aed709a4f6ec6a3c611ac2f6042346f37f33162705f14a18e2" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.7/noodle-linux-arm64"
      sha256 "3e3afbf786a28d304bc3356e63b155bc0a6e5920d873cc84e9366ed81d2d527c" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.7/noodle-linux-x86_64"
      sha256 "08357f176d3126962355039f87fe99352ac043e45e25d27f153330b30c2b6423" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
