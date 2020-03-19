# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "dnsadblock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.3/dnsadblock_0.2.3_darwin_amd64.tar.gz"
    sha256 "3b6f19e0e1cb042683a7a2b1703799d3c349793eeffd4697176083cdec5a7220"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.3/dnsadblock_0.2.3_linux_amd64.tar.gz"
      sha256 "f4846da4d1360cca42fbd38891d9bdf5738d49b9c5c6e4a0320509c8d298b55a"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.3/dnsadblock_0.2.3_linux_arm64.tar.gz"
        sha256 "834e49a582fb22b987e671bdb754103926ccb55d094e318baf58b3eb828ceb47"
      else
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.3/dnsadblock_0.2.3_linux_armv6.tar.gz"
        sha256 "d63bf12112c505cadafb2fdc049cdcb6c89ad77db5bb083fa597ca23e1dfc922"
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
