class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.4/noodle-macos-arm64"
      sha256 "94e625fe08730fa075055fe277e4d9ab5bcef2d0386d1432441da1797218e9f3" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.4/noodle-linux-arm64"
      sha256 "5442f745f876d727b59847d8317fc0b146293648c80ce9f73c77f4446c68039e" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.4/noodle-linux-x86_64"
      sha256 "9d2e12ae7376c0984bec8fcefcb633ed40f45eb3e4030d00ef1e7e22dee05256" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
