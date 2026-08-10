class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.0/noodle-macos-arm64"
      sha256 "fbd0bdc941b0e406e7a8a22bc173ffeb3f0c70688f419077db83d931d8fe73bc" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.0/noodle-linux-arm64"
      sha256 "d1b86d35b362decce2d6902ddb26578b30d038964bbb1496316d80eb15f50304" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.0/noodle-linux-x86_64"
      sha256 "c683ee6fc1cf3161c623208e22b157582ac61f46a36f39cc268bd0a90aacf7ad" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
