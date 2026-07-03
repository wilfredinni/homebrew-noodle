class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-macos-arm64"
      sha256 "1fed92c472321ab5f1bcedb69f12ac470de5bb6538664bdc1af33c39ebcd10f8" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-linux-arm64"
      sha256 "85a846e53afb9f26f541c9be2c190b06a5e44fb4991cd56d84fc7ed14090269b" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.1.0/noodle-linux-x86_64"
      sha256 "de653b6668c3585ab77d115834cb1db32adeafe73d5b44ab39f993789442eeb2" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
