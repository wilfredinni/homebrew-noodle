class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.2.0/noodle-macos-arm64"
      sha256 "2ea1b3a15143347f3c0da7f772091622f9f5114be7d9d6e383027ba832e3300b" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.2.0/noodle-linux-arm64"
      sha256 "851800ed1f1d1f7300e514b94f63e88b6d65161e764d387a66b34edaac1a936f" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.2.0/noodle-linux-x86_64"
      sha256 "84c920054ee914de7d7ffff4d9f22c547fbf8e11a8da73f939661a104a09e6c3" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
