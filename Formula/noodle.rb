class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.5.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.6/noodle-macos-arm64"
      sha256 "595b78f2cdef934d65225716fdcfbe6781706958278c16ad6a67a856b4551c1b" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.6/noodle-linux-arm64"
      sha256 "a7ea74486519b5e7c2562d42596ab700210e70251af6d6f2a91b96ff1e917536" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.6/noodle-linux-x86_64"
      sha256 "1047de49c4e875f045ca5e4694f1b15b0baee024fe62f3a0a3d3b8eb95194884" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
