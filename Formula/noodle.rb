class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.0/noodle-macos-arm64"
      sha256 "f278d2f8df091b471b37e43c72de75dd50d89bfaeed6195222c5e1a9fe070765" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.0/noodle-linux-arm64"
      sha256 "3d9f70c535b8b170271456d6cabdd2a60b4d91bffd2827d9aec326fbe4bd41df" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.0/noodle-linux-x86_64"
      sha256 "0b8d58a1a4429ae72d084e467de7e54d4ec31a125df48432f571327fb332811d" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
