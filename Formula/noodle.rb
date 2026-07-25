class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.2/noodle-macos-arm64"
      sha256 "cbcb8888f6ec444327045a862ff1c23b38841b85ff60b380848eb63e9baa76a4" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.2/noodle-linux-arm64"
      sha256 "41da8a4e2931f1630acb0ecae8da57bbedf2a7f029fbc30b2e772509a42c8e25" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.2/noodle-linux-x86_64"
      sha256 "691d03cf9ed23bba55995e3e312703f8dc5483ab2bff505dcff35559a8ab815a" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
