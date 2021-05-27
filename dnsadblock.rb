# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsadblock < Formula
  desc "DnsAdBlock DNS Proxy"
  homepage "https://dnsadblock.com"
  version "0.2.169"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.169/dnsadblock_0.2.169_darwin_amd64.tar.gz"
    sha256 "fc9a5352a141efdf953ac26637aac5537dbcdf3dbcd124ab0fbc1bee2542b9dd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.169/dnsadblock_0.2.169_darwin_arm64.tar.gz"
    sha256 "39e2392c00976e2bbbf786610fd6e8cf0296607f4dc879cfa14a794518722649"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.169/dnsadblock_0.2.169_linux_amd64.tar.gz"
    sha256 "a1e439249fdc1765c84e4acebf08316060bfa501b3aaff29e8e006fc04a9618f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.169/dnsadblock_0.2.169_linux_armv6.tar.gz"
    sha256 "07cf9b830e143675d783414120c4e4dec477b3684c319488db3ba939006ef5c1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dnsadblock/proxy-release/releases/download/v0.2.169/dnsadblock_0.2.169_linux_arm64.tar.gz"
    sha256 "d4ea185ea9e32331f93ae5c30b22ecd91b4bcf50cafdb51aa66c36864f3f7693"
  end

  def install
    bin.install "dnsadblock"
  end

  def caveats; <<~EOS
    To install DnsAdBlock, run the following command: sudo dnsadblock install --config <your_conf_id> Then setup your DNS manually to 127.0.0.1 or by running: sudo dnsadblock activate
  EOS
  end
end
