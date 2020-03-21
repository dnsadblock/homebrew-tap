# This file was generated by GoReleaser. DO NOT EDIT.
class Proxy < Formula
  desc "dnsadblock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.33-beta.19"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.19/proxy_0.2.33-beta.19_darwin_amd64.tar.gz"
    sha256 "21ba7d8dbf8e0d4d3883bca787fd2369068ab16f3332ff68017c08ed27832842"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.19/proxy_0.2.33-beta.19_linux_amd64.tar.gz"
      sha256 "b1cf3d816c91cfea8bc89f450e33495a7d8f2b96359d756ce87ca40c77a3f878"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.19/proxy_0.2.33-beta.19_linux_arm64.tar.gz"
        sha256 "47e261e0f072ead53a08e86467382c26b692e5bec325334aefb60201fc4102ca"
      else
        url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.33-beta.19/proxy_0.2.33-beta.19_linux_armv6.tar.gz"
        sha256 "7cd159d82df4b4d2c9a45ef501651d95d28064392550993990c10f8028bb6df3"
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
