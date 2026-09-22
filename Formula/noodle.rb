class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.3/noodle-macos-arm64"
      sha256 "1617308b49c429cfc2829cef58f3d01adf2bc15a7ebc34225984403cf47bdc2a" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.3/noodle-linux-arm64"
      sha256 "dd21ec36a20072def435b2ba98be2b0e68114b4221fb76f3d5952654e0af27e0" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.3/noodle-linux-x86_64"
      sha256 "f449b66a7f0dfe0f5b0b2257eae1916ba28241436809ac18273ed8348221f06e" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
