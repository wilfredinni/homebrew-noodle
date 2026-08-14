class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.7.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.4/noodle-macos-arm64"
      sha256 "ae014048c06fa410ffbdd774a6989335d50096aefefc0c2cdaf2f1fcce7503c2" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.4/noodle-linux-arm64"
      sha256 "4a194bff6a36caf7a3eb4bbb842780a9817728bf8967ea5044b68943895b5be7" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.7.4/noodle-linux-x86_64"
      sha256 "22c7d760fc1ac1a6d646b474cfc5ba008bb844f798ae5f15847a016ae9da3625" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
