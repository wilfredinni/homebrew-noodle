class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.7.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.3/noodle-macos-arm64"
      sha256 "1532a9abe9c3ebf5617336fed8be1ae4f30b57e52cae689234535acd921d9ea5" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.3/noodle-linux-arm64"
      sha256 "abbfabbb61f4726b4222311a3e8305e8d0c9f66bd15611686897626edadbbf3e" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.3/noodle-linux-x86_64"
      sha256 "0313f0f4502306e47c12d7ff10ac427b4dd9be1c2541f98716e89bab06db4488" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
