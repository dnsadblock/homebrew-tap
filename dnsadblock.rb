# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.106"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.106/dnsadblock_0.2.106_darwin_amd64.tar.gz"
    sha256 "332117d47d6bbafc54217fcac7e55b40ae9fb09f5de5d8b09c72a9fffb4c6c0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.106/dnsadblock_0.2.106_darwin_arm64.tar.gz"
    sha256 "4390c1efaf820c88870436c48bf403c93d09f63a7984ded9aa943413f962f361"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.106/dnsadblock_0.2.106_linux_amd64.tar.gz"
    sha256 "97103c8445835f7109172c8d16ca6887f4c641d08a903aad952f128a80ec41e1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.106/dnsadblock_0.2.106_linux_armv6.tar.gz"
    sha256 "6355256ef951830d80998f1948f569c2fff365d2410f756ccda85f9c4be24f89"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.106/dnsadblock_0.2.106_linux_arm64.tar.gz"
    sha256 "d8b46a222fc45da04784b4dd323986d0e7f653ab91f0ee04b84f43fe3c462c91"
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
