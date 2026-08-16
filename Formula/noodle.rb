class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.7.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.5/noodle-macos-arm64"
      sha256 "0027313bd27fcb88c22e7e85387d2d96b626c0b483b9924980c42a1364f7f4f1" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.5/noodle-linux-arm64"
      sha256 "17451f2655064d10cbbbfe7acacf311afaa13c07253a413b21883dfcffbe83a1" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.5/noodle-linux-x86_64"
      sha256 "96d60d6a64fcd991d9c51cb9db82da7edf7e56d5197c6c8d699b33bee1a645f1" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
