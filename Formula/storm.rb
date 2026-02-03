class Storm < Formula
  desc "Lightning-fast download accelerator with adaptive multi-segment parallel downloads"
  homepage "https://github.com/Augani/stormdl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.0/storm-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b691ea8563121c6a7131a9b917516747e18825b6069c8614a1b45c4db1bc664e"
    end
    on_intel do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.0/storm-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0064394e95cb408bed1ba2f0f937745f209d0e4edb1b4772ecde9d8532da9216"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.0/storm-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e584f1f58536eea78857d450247ee25d79decbff726b906a07e38781ae55fd95"
    end
    on_intel do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.0/storm-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0da2b271d1c1259e833a43bcf93911061bbfe97696c63c95c10d04609f8c36ad"
    end
  end

  def install
    bin.install "storm"
  end

  test do
    assert_match "storm", shell_output("#{bin}/storm --version")
  end
end
