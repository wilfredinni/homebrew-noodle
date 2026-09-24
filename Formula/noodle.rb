class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.4/noodle-macos-arm64"
      sha256 "0e6e7aeb2da4e3a1c72687fb8064f97f8e02d342512a5586a1b4968d43cfbf08" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.4/noodle-linux-arm64"
      sha256 "3c8a44ca7c1e25fd08b50de6968c35bb7c58d27577686147963ef8010a8717c3" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.4/noodle-linux-x86_64"
      sha256 "1590871386423d9e9b97d1e5e266292414037b9d13cc9f304b12cf4f72267939" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
