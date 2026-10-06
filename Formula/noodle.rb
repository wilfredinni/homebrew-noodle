class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.9.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.8/noodle-macos-arm64"
      sha256 "c98d99aa2a673102744d713e993ed7412e171dda398ed590f43ceb86057eb3c9" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.8/noodle-linux-arm64"
      sha256 "598a8619617132f435daa5b7a0f066ac05d14f289ec4eb2a61fe695488fee218" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.9.8/noodle-linux-x86_64"
      sha256 "1dc4e3319dac18c590d6b35a7f1f1e9ae5a67b87b79ad84045f75519066dd55c" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
