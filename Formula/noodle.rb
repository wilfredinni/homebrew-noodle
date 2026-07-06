class Noodle < Formula
  desc "Terminal REST client"
  homepage "https://github.com/wilfredinni/noodle"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.1/noodle-macos-arm64"
      sha256 "ac346c3672db4aec4b4c2ed17685c73d5909269d2656257000e46ca131392314" # macos-arm64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.1/noodle-linux-arm64"
      sha256 "78603d41676b35bca2525cd5a638e23e35c40b06dac7d6415a700f4310dd807b" # linux-arm64
    end

    on_intel do
      url "https://github.com/wilfredinni/noodle/releases/download/v0.3.1/noodle-linux-x86_64"
      sha256 "8db838070c59ca720e3c603a80338ca450774f34bd162ba24af593596163348d" # linux-x86_64
    end
  end

  def install
    bin.install Dir["noodle-*"].first => "noodle"
  end

  test do
    assert_match "noodle", shell_output("#{bin}/noodle --help")
  end
end
