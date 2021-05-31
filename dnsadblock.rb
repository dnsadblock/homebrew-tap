# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.172"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.172/dnsadblock_0.2.172_darwin_amd64.tar.gz"
      sha256 "cd60ba42f2a2e1fe060dfea42a6af3cd7f277fd6e49415bda80c95b258cbcad6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.172/dnsadblock_0.2.172_darwin_arm64.tar.gz"
      sha256 "17f481d89560a32d26eafd812c3632b0f2923c0fdfa9e7a8c9e18bdc4a4d1bd6"
    end

    depends_on arch: [:x86_64, :aarch64]
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.172/dnsadblock_0.2.172_linux_amd64.tar.gz"
      sha256 "5cd8280629ea0150e9a9129d8d2382a78adeb8d519bde85ae97b75caf4a4bbc6"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.172/dnsadblock_0.2.172_linux_armv6.tar.gz"
      sha256 "74fe668cb7c493c0fb19428775755c4eedc9bf8dfdfaeaa4cee15aabab63e9df"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.172/dnsadblock_0.2.172_linux_arm64.tar.gz"
      sha256 "8eefe2e5ea87762346fec28e5c97ea16f665559b4e11f86ea906130799fddd0a"
    end

    depends_on arch: [:x86_64, :aarch64, :arm]
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
