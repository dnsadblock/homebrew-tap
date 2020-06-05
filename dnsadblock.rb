# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "dnsadblock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.57"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.57/dnsadblock_0.2.57_darwin_amd64.tar.gz"
    sha256 "e4eab25d434ffba405249142208d2d2049c8ed0370bc9d30c2f9204c455f1866"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.57/dnsadblock_0.2.57_linux_amd64.tar.gz"
      sha256 "6da29dd74dc8606b62950edc5a99d66e1c32ff5ae4d8a8465a65e6ed4af1747b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.57/dnsadblock_0.2.57_linux_arm64.tar.gz"
        sha256 "e12348262b012119f491f56eeb7058f62afae3d4f3046879345c5a28a2e666b7"
      else
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.57/dnsadblock_0.2.57_linux_armv6.tar.gz"
        sha256 "7a4a528c9af611f260c3a033e888bf299de91bd35e90f098d802a4c39922e9cb"
      end
    end
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install dnsadblock, run the following command:
    sudo dnsadblock install --config <your_conf_id>
    Then setup your DNS manually to 127.0.0.1 or by running:
    sudo dnsadblock activate
  EOS
  end
end
