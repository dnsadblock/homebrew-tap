# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.119"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.119/dnsadblock_0.2.119_darwin_amd64.tar.gz"
    sha256 "fda435e4661333597b0efd06871da1d0ffa613f9486eb7a276c078a89b47df72"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.119/dnsadblock_0.2.119_darwin_arm64.tar.gz"
    sha256 "635270dec6b54b085b43c58c0b1577e1f9c64821ade30dc184fb97df5f5eac46"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.119/dnsadblock_0.2.119_linux_amd64.tar.gz"
    sha256 "b7a7ca824c931a447dd256f2bb529e0129ccb109c6ded1ce019bd47a9e26c7ab"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.119/dnsadblock_0.2.119_linux_armv6.tar.gz"
    sha256 "c9a835c3d822093d949544a4a600e7dfd58b2480205e8ab909f34be684926ad3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy/releases/download/v0.2.119/dnsadblock_0.2.119_linux_arm64.tar.gz"
    sha256 "4240c4f6b42f9984d893ad6f06ed4d0290e49d51491d3f224b954200868a634f"
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
