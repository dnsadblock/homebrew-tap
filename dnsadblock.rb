# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "dnsadblock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.49"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.49/dnsadblock_0.2.49_darwin_amd64.tar.gz"
    sha256 "7e3ebc4484884d2e17b72b4e25c27d80a4541b674ea5609b42a8926d7a7fa04b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.49/dnsadblock_0.2.49_linux_amd64.tar.gz"
      sha256 "a22cd356d7eca7590225a9e04d0ddf43e200a4bef66d6b738c9d07ec4971869f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.49/dnsadblock_0.2.49_linux_arm64.tar.gz"
        sha256 "ec643a306ea4c9c4b18ea2b817fd90eef36e5b8bb55a598a748284fcf8247562"
      else
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.49/dnsadblock_0.2.49_linux_armv6.tar.gz"
        sha256 "ab1f468206070d00333d89a4a60b5fba2a0de2a3ec8f806d058f4b65fea7440e"
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
