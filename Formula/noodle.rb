class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.0/noodle-macos-arm64"
      sha256 "7e03e6847050074193d2109b30b43bf19442bf64c78f163ed492766ef4beb7be" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.0/noodle-linux-arm64"
      sha256 "83fc2341e5d9c258b2838b970048a3c5e6543001cd879d9c0c3ad13d16070638" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.0/noodle-linux-x86_64"
      sha256 "55daaf4e782a33e957fbe94d9d473b519bd7a9f223ad7dd6410a7518ba8935ec" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
