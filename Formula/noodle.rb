class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.5.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.7/noodle-macos-arm64"
      sha256 "fe0bce607c42029c52506f98cd7bd3c9979be3bee9cd45c610384da9b4b75b9f" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.7/noodle-linux-arm64"
      sha256 "6720b9c802b1e44d7a2eefcee77de408d90c19f1f3c1b895b7456e06e89ac475" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.7/noodle-linux-x86_64"
      sha256 "f68d3de31f670b738b0b66d39f925a2660c33b75cb7e3c5f569e66f9e7e6b314" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
