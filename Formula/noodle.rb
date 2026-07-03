class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-macos-arm64"
      sha256 "5be3f2488436ab9978c42a3e7fecf80ffd2e7664ba226e9b3a1473c3cb81bb36" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-linux-arm64"
      sha256 "f9069843c0e88b2c13a80b6dc01ff76f689fd5d3f5d422dafc000d2e2ea3d243" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-linux-x86_64"
      sha256 "b1b6eb11cc3d2960dab2740c50f08903b1b1051fe5d1db29c9b246bcd55a164e" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
