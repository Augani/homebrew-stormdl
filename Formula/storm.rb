class Storm < Formula
  desc "Lightning-fast download accelerator with adaptive multi-segment parallel downloads"
  homepage "https://github.com/Augani/stormdl"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.2/storm-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "7b183ea98b8acd8a6ba7a2e2e1d10b2bf455e1c9bc13230d2a6aa92bb81fcbbe"
    end
    on_intel do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.2/storm-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "417d1a2ef0a8dfc1a8f60eef734c14c21fe731e64c0e60f5f9402f5fecfad763"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.2/storm-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e5d52c19f9d29343addcdd344db46e91afa0e1b9a9c95a07fb75cc0d146aed7"
    end
    on_intel do
      url "https://github.com/Augani/stormdl/releases/download/v0.1.2/storm-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a725900bd1b014188468634e12aaf3a169f4c06195ec89598ebf645ab3897980"
    end
  end

  def install
    bin.install "storm"
  end

  test do
    assert_match "storm", shell_output("#{bin}/storm --version")
  end
end
