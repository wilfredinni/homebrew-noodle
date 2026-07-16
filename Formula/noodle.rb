class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.4/noodle-macos-arm64"
      sha256 "c76da6faa0240fec3a8b46792941b055bc7690f3997362124f281f56be325aaa" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.4/noodle-linux-arm64"
      sha256 "b49f07bae6c099716860d25b64503414e7e472dc9becdde4c1af481bca65780e" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.4/noodle-linux-x86_64"
      sha256 "f97e3042067676e54cb0c727cd69d7e1a6e571c54da782de5dff2d3b4050e201" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
