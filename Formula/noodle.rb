class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.1/noodle-macos-arm64"
      sha256 "872e0c0100b3de78b7be586ea2e5069180e158707358b192d3e5de01cbff757d" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.1/noodle-linux-arm64"
      sha256 "1754bf9f95e95cbc63d66ed9bb580d58e3952a9498ba2103f4bf424b106fcf76" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.1/noodle-linux-x86_64"
      sha256 "9c9f91e5342e8828b275a72b4125f070f3da025a6287e6ad3edd220b2766b346" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
