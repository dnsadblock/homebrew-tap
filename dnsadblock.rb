# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.70"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.70/dnsadblock_0.2.70_darwin_amd64.tar.gz"
    sha256 "ccda80df2fbe9df07488778f3ec683a5b894176e92dde58f372934387e016f56"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.70/dnsadblock_0.2.70_darwin_arm64.tar.gz"
    sha256 "35d8e9f7dbb6d8257d0198a4d0f93914063642357997751308c205a819a2f9c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.70/dnsadblock_0.2.70_linux_amd64.tar.gz"
    sha256 "8cbaebfd040b2cb4b8637ce6485466be73e3936cb66e2c4886d1a1c5e919fb4d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.70/dnsadblock_0.2.70_linux_armv6.tar.gz"
    sha256 "fa4672b3c94434bd35dda3292637781461f1e5f3faa4c534f9028fc9fa248332"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.70/dnsadblock_0.2.70_linux_arm64.tar.gz"
    sha256 "287a59687fdd9ab4424c77f12077770efdd68330caba077aabeebdff5e21e948"
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
