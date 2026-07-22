class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.1/noodle-macos-arm64"
      sha256 "4ca2a25388eace21aff94f9d036bac4f90608e235abf3eefc9ef6ae918914975" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.1/noodle-linux-arm64"
      sha256 "3a195fa899e655e1fe7eb6be6ccdfe2e695126fe2a960e7b02c00f136dacdffe" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.5.1/noodle-linux-x86_64"
      sha256 "5b8f1d2fa31c94b873fa29164773cee51902dc31616619ae9f2807a1ac725fd4" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
