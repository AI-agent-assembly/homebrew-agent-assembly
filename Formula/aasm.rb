class Aasm < Formula
  desc "Agent Assembly CLI for the aasm runtime and dashboard"
  homepage "https://github.com/AI-agent-assembly/agent-assembly"
  version "0.0.1-alpha.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AI-agent-assembly/agent-assembly/releases/download/v#{version}/aasm-aarch64-apple-darwin.tar.gz"
      sha256 "c12d4a6ae0a66c8a1670e93c8c039efa8a0cd721c148da9096ff193462912dab"
    end
    on_intel do
      url "https://github.com/AI-agent-assembly/agent-assembly/releases/download/v#{version}/aasm-x86_64-apple-darwin.tar.gz"
      sha256 "11c2ca50ec4738796ef9d3a2dc12cc12f900be2e40dcb8976ef5755f02996030"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AI-agent-assembly/agent-assembly/releases/download/v#{version}/aasm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6abc2b9ebb6020c45dde7664e3e7c50b9450320e077431730c44dc7a2f3556fc"
    end
    on_intel do
      url "https://github.com/AI-agent-assembly/agent-assembly/releases/download/v#{version}/aasm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddc9a741da7599a83709fad683c1d232831c1658de24fd759b31e2035a36e3a6"
    end
  end

  def install
    bin.install "aasm"
  end

  test do
    assert_match(/aasm/i, shell_output("#{bin}/aasm --version"))
  end
end
