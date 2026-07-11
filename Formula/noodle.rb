class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.0/noodle-macos-arm64"
      sha256 "18e4a5c710b0c9366180f410a0ea7cfd8f0736e5780554b700724e0990883116" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.0/noodle-linux-arm64"
      sha256 "e581a6cc408e512345f748b3f91b5482c4ce365c4804f11e667cdbaa835956f9" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.4.0/noodle-linux-x86_64"
      sha256 "f58192d8ea8a7e86a8c7f1330e3516cd83b959593dd77650516fb34387a37181" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
