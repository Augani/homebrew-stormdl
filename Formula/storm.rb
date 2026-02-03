class Storm < Formula
  desc "Lightning-fast download accelerator with adaptive multi-segment parallel downloads"
  homepage "https://github.com/Augani/stormdl"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.1/storm-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "47a436ac3d5f02c0bad3969f1af91b1e017ae2e44dee6df0d9e0b2a0ae64a940"
    end
    on_intel do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.1/storm-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "0b4f183967b4c43ba0ce1af10afa37bd905bd0955859e0dcd0e8406db66b0df5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.1/storm-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a8850e539ed6a3c8d3ae5ded34789a9727b24bd037fb02fe292a3322bfe9a24"
    end
    on_intel do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.1/storm-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4024bb90086e64aae92fe5e090fb7cbe0a90dd703def5029c1e95a961c56a777"
    end
  end

  def install
    bin.install "storm"
  end

  test do
    assert_match "storm", shell_output("#{bin}/storm --version")
  end
end
