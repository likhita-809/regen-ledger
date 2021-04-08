# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RegenLedger < Formula
  desc "Blockchain-powered marketplace for climate solutions and planetary regenerations"
  homepage "https://www.regen.network/"
  version "0.7.6"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/likhita-809/regen-ledger/releases/download/v0.7.6/regen-ledger_0.7.6_darwin_amd64.zip"
    sha256 "0543ce6dd9e58566f34b575c962695ff5a2b5f50ad6dfa24640263592414715c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/likhita-809/regen-ledger/releases/download/v0.7.6/regen-ledger_0.7.6_linux_amd64.zip"
    sha256 "6395528f6efa680fec719189560708d6ae46e11c8d3703cacae448970fc0c6de"
  end

  head "https://github.com/likhita-809/regen-ledger.git"

  def install
    bin.install "regen"
  end

  test do
    system "#{bin}/regen--version"
  end
end
