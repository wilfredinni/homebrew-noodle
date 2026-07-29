class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.5/noodle-macos-arm64"
      sha256 "b094fdcdfc17275d941c05d421687f0bd255051515f5d882c5abe4ba260c6867" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.5/noodle-linux-arm64"
      sha256 "cbde3de37476857f0b36cdce38d4c6c872651c1cc44454bddbbe1a5c40bb6dab" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.5/noodle-linux-x86_64"
      sha256 "8159b6a3bc004a77ad3601013859f5c17e2b999cefa51baaa2dd4106c6e3a9f6" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
