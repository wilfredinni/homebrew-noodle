class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.0/noodle-macos-arm64"
      sha256 "90b95c3cabbb9147a99fdc80bf2a34b3e023acead6c9d68d06d38fae22fb7b33" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.0/noodle-linux-arm64"
      sha256 "72639e4534b1771f59a9ea61cfd62af7b4a2a89a4c09f9ec205ec0c0afd5ffc4" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.0/noodle-linux-x86_64"
      sha256 "dd21358d69d4a70f998f8f9e38b78ecc5695682e9c006fea47c22e8146d9a077" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
