class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.2/noodle-macos-arm64"
      sha256 "67422454b9e2654817fe2d17714d4ff175dea89575b17a6336abf669e36b379c" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.2/noodle-linux-arm64"
      sha256 "0a13007f92410a2c88ca882c3001aed5372555fbbc15b3ea65ec00d2539b57dc" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.6.2/noodle-linux-x86_64"
      sha256 "8a33eef1b591d92dadb21c45788d07ebc05a098091681d3e51bf7de95f50ffd1" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
