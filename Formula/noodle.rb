class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.8.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.5/noodle-macos-arm64"
      sha256 "b9c20d0ce744249c5f43fd6986d701d35f8262fac1f70c573f2545e791ea5afb" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.5/noodle-linux-arm64"
      sha256 "9cbf6b60b1d4017243bed656ff27a3588ae93fcabae715587dd7e40085bed556" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.5/noodle-linux-x86_64"
      sha256 "1e0e3f38dbfc30403f44c4d19fb41b4064e1ac035e4ea3c7edfdaf7b71037b39" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
