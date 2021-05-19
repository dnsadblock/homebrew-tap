# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.85"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.85/dnsadblock_0.2.85_darwin_amd64.tar.gz"
    sha256 "a8d61e15e9d54ad47bdb358829d2101ae6bdb76af88f443acbd46f56d9087c6c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.85/dnsadblock_0.2.85_darwin_arm64.tar.gz"
    sha256 "fd090b0ae4068b46c4da2011e73a2e730e67f0e21c65b124567aafb8451f9131"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.85/dnsadblock_0.2.85_linux_amd64.tar.gz"
    sha256 "65684df9b5645b6f6e3b8bb1ad75194a105e414d7d73448b33df120b3a1191d3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.85/dnsadblock_0.2.85_linux_armv6.tar.gz"
    sha256 "cd0c8cf7ad42b3a727c07146b1e179a834c7e79c189508be37700e348fe0110d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.85/dnsadblock_0.2.85_linux_arm64.tar.gz"
    sha256 "4b667c379e972a07cf0a893887bb2747daa07b9cb252ca4de03c56f9de2a8137"
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
