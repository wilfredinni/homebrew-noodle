class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.2/noodle-macos-arm64"
      sha256 "28492c190705234224f3f8e516b988dddb6ce499c4ad3e92313794ebba4e6f7a" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.2/noodle-linux-arm64"
      sha256 "80c0013a09d76d75ab9bd77d764de41b081739fe421169a2cd50fc17c2ca2aae" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.2/noodle-linux-x86_64"
      sha256 "48d95b825934eed6eee34fa436e51f7709ee833cbdbbd4ac493b0f44f178ebe9" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
