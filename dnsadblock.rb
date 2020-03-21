# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "dnsadblock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.33-beta.16"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.16/dnsadblock_0.2.33-beta.16_darwin_amd64.tar.gz"
    sha256 "75dccec88dcb492c80328dd02ef52f1f16d1ca4218c769c6fc528329ac1cc4cd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.16/dnsadblock_0.2.33-beta.16_linux_amd64.tar.gz"
      sha256 "2ad264a9020cea1e2f84f923e616aca65744a5305649a2995419bcd56016efb5"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.16/dnsadblock_0.2.33-beta.16_linux_arm64.tar.gz"
        sha256 "3a82ae49bcd91da6cc05de61a9e9e6c25785b42ca08f42470e9a4d157e1ae1e9"
      else
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.16/dnsadblock_0.2.33-beta.16_linux_armv6.tar.gz"
        sha256 "1f514b291ded1e21029490016c3d3691a6d8aa0ff5d8beb2a3509820ccadf348"
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
