# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RegenLedger < Formula
  desc "Blockchain-powered marketplace for climate solutions and planetary regenerations"
  homepage "https://www.regen.network/"
  version "0.8.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/likhita-809/regen-ledger/releases/download/v0.8.0/regen-ledger_0.8.0_darwin_amd64.zip"
    sha256 "f5c795fe79ae34abd2393814a8891ac1cee4940317301d8a3bb20b64405d5e40"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/likhita-809/regen-ledger/releases/download/v0.8.0/regen-ledger_0.8.0_linux_amd64.zip"
    sha256 "b4441d79b8b32ae324365793512c864557643b3e2d041b3c1a9782b6ba41c7cc"
  end

  head "https://github.com/likhita-809/regen-ledger.git"

  def install
    bin.install "regen"
  end

  test do
    system "#{bin}/regen --version"
  end
end