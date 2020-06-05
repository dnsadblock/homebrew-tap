# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "dnsadblock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.58"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.58/dnsadblock_0.2.58_darwin_amd64.tar.gz"
    sha256 "52da3d807fff27969e515d4324daed410c88e0c10ed764b2e5f8a1e3ce55a85e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.58/dnsadblock_0.2.58_linux_amd64.tar.gz"
      sha256 "482e011932b8a7d64c41aaf7da456d0c82cb2c0b135ef741255fcf568b1783f3"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.58/dnsadblock_0.2.58_linux_arm64.tar.gz"
        sha256 "97106154728dfbcc8917e7424086361536bee0e53f137727d7e529fff13277f0"
      else
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.58/dnsadblock_0.2.58_linux_armv6.tar.gz"
        sha256 "ae43a1bb89e1cf1f7b1f356b87c0dececf2f389aaf190e5de90b64f4ee41323f"
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
