# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "dnsadblock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.33-beta.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.9/dnsadblock_0.2.33-beta.9_darwin_amd64.tar.gz"
    sha256 "13d360a190f6bee6a7daa7bad71ee81bf7dcf56e7c9c115f95f77b3ed7ff710d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.9/dnsadblock_0.2.33-beta.9_linux_amd64.tar.gz"
      sha256 "62494188fda2a633323c1568392c1be42dc9bcc74cdc3ff3c36d719c7ef9252c"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.9/dnsadblock_0.2.33-beta.9_linux_arm64.tar.gz"
        sha256 "d253cf14bfa4f3a93a6ff4ced917c98f1b10cefd428eae3fef11d64b6d628194"
      else
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.9/dnsadblock_0.2.33-beta.9_linux_armv6.tar.gz"
        sha256 "3347e2e9e1c2af87efbc2c8194204e7b1dad40a0d0185d2159222ce5c70d9a69"
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
