class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.8.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.4/noodle-macos-arm64"
      sha256 "6c0f0c09d01fee5716795ecedd19fb1fa4c30009b08baa50cc65ff8a8743818c" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.4/noodle-linux-arm64"
      sha256 "c3eb702dfaa56fe626c967a469f2e265b89f4a8f3a17675bc7166f14a0ddd9ca" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.4/noodle-linux-x86_64"
      sha256 "0ec285e6f5ffce917e7e6c7cc005e2f34a6b8980c1cf9d489d2f45ff78a70e1a" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
