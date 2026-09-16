class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.0/noodle-macos-arm64"
      sha256 "38b4a114bc4ceb15ac72aed506e4d674498914f30acab56b43ff7155b386b731" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.0/noodle-linux-arm64"
      sha256 "4708692fef6b2386b0658a1e48320083b1fd2377765794ab2e6c758ee2cc7373" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.0/noodle-linux-x86_64"
      sha256 "f5e0287f6ce4b7e646577f99a914e8c37b94f54add78603549aba526422817ae" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
