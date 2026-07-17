class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.7/noodle-macos-arm64"
      sha256 "bb9055fd516e79acf016bfaafa94d68c4051be0ca974044785f335845f396321" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.7/noodle-linux-arm64"
      sha256 "ab041fe2ddea2dde5429043717f93ade55ea3527c7ca313f7700503c6a12ad3b" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.7/noodle-linux-x86_64"
      sha256 "20d84d5bb52e3eca9729a04d5532f7c391659c022041bfe94c329daa58a82801" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
