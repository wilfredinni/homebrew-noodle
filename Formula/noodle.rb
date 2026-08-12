class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.1/noodle-macos-arm64"
      sha256 "9477326a990029531825db2097728414eb02f45ed74fd762e74f1c2355552ba8" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.1/noodle-linux-arm64"
      sha256 "4c7106141dbee75f49f79a14fbe04e8bfae4971f88e98142b681b3fabc5958f2" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.1/noodle-linux-x86_64"
      sha256 "62c6b1c528a8a5e6afcdefa40c896bf6841fc6fa01493b3427f801d11c27c2f8" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
