class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.0/noodle-macos-arm64"
      sha256 "71029d63695b417df0ccfc00763be4aa8a271a94f20cb55af66aa186bccb0e3f" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.0/noodle-linux-arm64"
      sha256 "aea5119c19dc8956140e5ba1ce1494d08190dbdbf70cb538fc00707829e67dc0" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.8.0/noodle-linux-x86_64"
      sha256 "7b6a182a814fcd11d275b821a6141d00808759e9ca680b435dd4012929a393d7" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
