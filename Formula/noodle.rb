class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.1/noodle-macos-arm64"
      sha256 "8ed20431bdc011218b96b517c1e2e5e04f2dec6e939253fd2844bde905940ea1" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.1/noodle-linux-arm64"
      sha256 "5ebaae44c9a936f500d862d8d337d68387ce1a150ef24391d8504350151715ac" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.1/noodle-linux-x86_64"
      sha256 "35ad8e6b919fdcd702bdd10dcf9e694c7d1579be9b51014ec1bd6d33d6daa36a" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
