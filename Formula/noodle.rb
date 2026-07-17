class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.8/noodle-macos-arm64"
      sha256 "85987472e6b8042b3ac001444317d02596be8c45111dd0d85cf159c0dafc3ff3" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.8/noodle-linux-arm64"
      sha256 "df929250302ae5c58d545ffff61ec4b7ef559b76e9a8e7d98a8d66783d1a593c" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.8/noodle-linux-x86_64"
      sha256 "b280593fb454b42b8e4181fc9e56092f1c3c083f68f60980abcdbe2c08344283" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
