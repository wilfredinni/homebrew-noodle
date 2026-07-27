class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.3/noodle-macos-arm64"
      sha256 "e4b744f9dba33d4aea6eae7b14eaa5467d99923a997c347646e66c9f40b0f45a" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.3/noodle-linux-arm64"
      sha256 "a3ee60c5f8dcf5e8c66361f650299ae54ff4c1d76b044664f21e7ad4ed3b27a9" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.3/noodle-linux-x86_64"
      sha256 "b9e8552211a9f1d8a131983543e926df22d829d834cc4151f198b87b2191b2a4" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
