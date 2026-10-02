class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.7/noodle-macos-arm64"
      sha256 "f0961560805f2e26ac0bafcd6c88297c4b9b497f4a6f96c6f75164e8c006d29f" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.7/noodle-linux-arm64"
      sha256 "3267851ca2b49818377989c2601beddc144273206ab68e84f5db27d2b6585be1" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.7/noodle-linux-x86_64"
      sha256 "7f293a391dba9a332197b39fe4eb36cf4558e848b0abf487ce1783b7ae078d21" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
