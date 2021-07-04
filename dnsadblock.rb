# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.204"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.204/dnsadblock_0.2.204_darwin_amd64.tar.gz"
      sha256 "a8d6d85c4ff559f52a6d7c74fdd2db6d38be5d4d13e2412f4307b430405fa84e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.204/dnsadblock_0.2.204_darwin_arm64.tar.gz"
      sha256 "ab8f99d4efa58065ad1dc414e21cc5c87d6d5e56ff8891731dafd2bb58ecfb5a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.204/dnsadblock_0.2.204_linux_amd64.tar.gz"
      sha256 "9de5b799a11dbaa7adbdee40edd9f70061344b60e2ac7ae0dac76438cbe8da44"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.204/dnsadblock_0.2.204_linux_armv6.tar.gz"
      sha256 "80e5f6294f4cee75470716e3d347787ed1b734093e6e4fd13718ac79175a5d1f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.204/dnsadblock_0.2.204_linux_arm64.tar.gz"
      sha256 "9332fed90c5a2ce8aba6e78a9a2e74dd6570247be0c94b806bb6e4efe8e56235"
    end
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
