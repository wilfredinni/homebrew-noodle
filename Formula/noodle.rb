class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.6/noodle-macos-arm64"
      sha256 "a8bd8c41a708f09312906983a6e6415b0cebed26078526652d1a9ebf004cad30" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.6/noodle-linux-arm64"
      sha256 "e798c4aa112120ff61e917d31da8567b0aa53401e720db9dd77fe6d9a50f9e94" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.6/noodle-linux-x86_64"
      sha256 "1d8587f9f2fce35c6b55c454464bcc7552aaf727f74680f818ee1e96356e0120" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
