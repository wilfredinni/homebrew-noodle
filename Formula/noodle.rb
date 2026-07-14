class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/0.4.2/noodle-macos-arm64"
      sha256 "e3920773ff3068024e036017b94fd509c58e85d2863d06f65b0b05a4f859b94c" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/0.4.2/noodle-linux-arm64"
      sha256 "92d48de1392dae70d1f4086e682bd34057cc401f363dc6251adc9856a92bf5ce" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/0.4.2/noodle-linux-x86_64"
      sha256 "aba63000c7430b554883f4132665a85ef7b84877484a30bfb319ff5e2c759122" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
