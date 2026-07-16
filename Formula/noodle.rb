class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.5/noodle-macos-arm64"
      sha256 "91d95f926348ebf327a06c38cdf80cce2ccd5eed8e80bbca9e2a7dd4fb3480e5" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.5/noodle-linux-arm64"
      sha256 "9ba06db5e58deae019d0ea6c399870a81dbd2301f44844ec36edfced7fec068d" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.5/noodle-linux-x86_64"
      sha256 "91d2cd278302f330fec603ef1d56d83070c96294b461e2cdfaaaf566e50c0bb0" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
