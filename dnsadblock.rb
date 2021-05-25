# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.153"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.153/dnsadblock_0.2.153_darwin_amd64.tar.gz"
    sha256 "ded4c41a6b6e072ee3a7aaefc8fa351ce8964ff598876fa5bbff5381d75025c0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.153/dnsadblock_0.2.153_darwin_arm64.tar.gz"
    sha256 "6f8b9b4178d05ae9b8e4a53208e15155ec02c1a60a86c389e9c3822853a3f6ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.153/dnsadblock_0.2.153_linux_amd64.tar.gz"
    sha256 "6bb46940ad84c4df6de3596baea7d8b2ed290ff8b666548331c32ae415c07d6f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.153/dnsadblock_0.2.153_linux_armv6.tar.gz"
    sha256 "69507dc79e0b6fb065fedecd135f1f949c9abec8d3ab8715786f4b9452b9f86c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.153/dnsadblock_0.2.153_linux_arm64.tar.gz"
    sha256 "7ef4fde6ce3d614faeebb8d9c589d73c873ebb5a522f8b1ecb67c28d8938f99b"
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
