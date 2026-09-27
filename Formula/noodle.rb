class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.5/noodle-macos-arm64"
      sha256 "0ad007ddee27a5b6fb6082fee92530c14493e1f06002daacd078a973dbc1bd6a" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.5/noodle-linux-arm64"
      sha256 "670329ed9b12d345c43ab119319d28390eea4a0c76a0fee7e418cedd63d81706" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.5/noodle-linux-x86_64"
      sha256 "f9262aa1fd3e11740e80d0204ed5226dc20bc4b210dbb843a8d97b8e7434bb99" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
