# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.91"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.91/dnsadblock_0.2.91_darwin_amd64.tar.gz"
    sha256 "c731a138b12f52555c3acdd81a59cb5f4c835b48f0be2cb46020df34eda91506"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.91/dnsadblock_0.2.91_darwin_arm64.tar.gz"
    sha256 "95eefae00e42c994821a04c0ed4f00705c7ab6672a4cecf92e14c855dbe9eb9e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.91/dnsadblock_0.2.91_linux_amd64.tar.gz"
    sha256 "45fe7843ba6375e4200cf0943c7d0fcb0f555dfc4147adf55b30141bcdb0b068"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.91/dnsadblock_0.2.91_linux_armv6.tar.gz"
    sha256 "cac78f5540d2cb44a4be78c79eb83d68b25feddbeaaed318b084e82209280e4a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.91/dnsadblock_0.2.91_linux_arm64.tar.gz"
    sha256 "8be64de5638cfbf8d77fc0a6f934120c8f2df6835d8a476c26d08fe14816c285"
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
