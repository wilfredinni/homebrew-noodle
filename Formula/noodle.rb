class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-macos-arm64"
      sha256 "c3c8c1cfeb9800822511e4d62dbf473cc40837ae5f20f31125693b85d8551a43" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-linux-arm64"
      sha256 "1e5cde3250f36b960b9c1e2b7a60077664a1cae7a36ae643efe150a89c5b1afc" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-linux-x86_64"
      sha256 "dfc5eec20f7a13d812587cf83a6bfcd8ba77eb60a004a41a2d2f2e9fba394713" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
