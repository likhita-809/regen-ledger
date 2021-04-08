# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RegenLedger < Formula
  desc "Blockchain-powered marketplace for climate solutions and planetary regenerations"
  homepage "https://www.regen.network/"
  version "0.7.5"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/likhita-809/regen-ledger/releases/download/v0.7.5/regen-ledger_0.7.5_darwin_amd64.zip"
    sha256 "9677ed838e8d71e9b21a9b82871a74801e4a7589c6e7c229c7daebc8ecebbc90"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/likhita-809/regen-ledger/releases/download/v0.7.5/regen-ledger_0.7.5_linux_amd64.zip"
    sha256 "127f112fee52a25a9c8040fd5090f3e3c072d80f32f8fa694b0f8c77ec166916"
  end

  head "https://github.com/likhita-809/regen-ledger.git"

  def install
    bin.install "regen"
  end

  test do
    system "#{bin}/regen--version"
  end
end
