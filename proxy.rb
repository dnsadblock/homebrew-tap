# This file was generated by GoReleaser. DO NOT EDIT.
class Proxy < Formula
  desc "dnsadblock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.33-beta.22"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.22/proxy_0.2.33-beta.22_darwin_amd64.tar.gz"
    sha256 "c8d3f280237f468db70850b9510f1568cb3aa5c5e342ab079f2cb9c2dd20b4c2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.22/proxy_0.2.33-beta.22_linux_amd64.tar.gz"
      sha256 "56453f5efd571b2359940dbf4420c75133a8d36891c0e7b1971ab422636d1ec6"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.22/proxy_0.2.33-beta.22_linux_arm64.tar.gz"
        sha256 "f5a95cdd164bb4c7893db8cc49e64ed7cfd4b8fa3cc861aee68518c6bcb515fe"
      else
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.22/proxy_0.2.33-beta.22_linux_armv6.tar.gz"
        sha256 "35208ea4d1e2c0cf75b67f93a115400001f96daa64aeba9ff18f44fc9ea8cf13"
      end
    end
  end

  def install
    bin.install "proxy"
  end

  def caveats; <<~EOS
    To install dnsadblock, run the following command:
    sudo dnsadblock install --config <your_conf_id>
    Then setup your DNS manually to 127.0.0.1 or by running:
    sudo dnsadblock activate
  EOS
  end
end
