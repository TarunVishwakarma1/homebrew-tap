# typed: false
# frozen_string_literal: true

# Homebrew formula for netspd, installing prebuilt release binaries.
class Netspd < Formula
  desc "Beautiful network speed test for the terminal, with a hypercar tachometer"
  homepage "https://github.com/TarunVishwakarma1/netspd"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TarunVishwakarma1/netspd/releases/download/v#{version}/netspd-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1da48bedee3a5b90d2477d9d88c0d71a040bc3d84c5483657db92ab1f05e9170"
    else
      url "https://github.com/TarunVishwakarma1/netspd/releases/download/v#{version}/netspd-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "17e70fecff93325a160fae7d60f043873a785ff7710df63f8932851403fb209e"
    end
  end

  on_linux do
    url "https://github.com/TarunVishwakarma1/netspd/releases/download/v#{version}/netspd-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2418b50aaea0dbec48cfa0132094963ab8d9ec4c6fc29770a9dd007fc13f16c4"
  end

  def install
    bin.install "netspd"
  end

  test do
    assert_match "netspd #{version}", shell_output("#{bin}/netspd --version")
  end
end
