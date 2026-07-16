class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/0.4.3/noodle-macos-arm64"
      sha256 "76923039a4885f6759f40d30cb514b92b65b28d89fad41a2d5640e5ee87c3e6c" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/0.4.3/noodle-linux-arm64"
      sha256 "78531b044bc9951d853f49f9e212057210bef339d01c411c2ffeda36792595f0" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/0.4.3/noodle-linux-x86_64"
      sha256 "b03f2c21608a0edc4f97227a9e319532c7441e84deaf1b62741340805c82be84" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
