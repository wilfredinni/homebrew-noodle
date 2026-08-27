class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.2/noodle-macos-arm64"
      sha256 "19746beb13423793272f80bffa66dbc95deb4411693a00ca28ff4d5b46147daf" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.2/noodle-linux-arm64"
      sha256 "f192d4128e613a07a00134b236a7be5b565aa48ce65d197cc0bf1e436032a615" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.2/noodle-linux-x86_64"
      sha256 "a3b039280e63e592b5f10f1d0774899862f8c81f9146286e83f8caefda99d55b" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
