# typed: false
# frozen_string_literal: true

# This formula is auto-updated by GoReleaser
class Hybridgrid < Formula
  desc "Distributed multi-platform build system"
  homepage "https://github.com/hybrid-grid/hybridgrid"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.1.0/hybridgrid_0.1.0_darwin_amd64.tar.gz"
      sha256 "3d3c218b1878e479a87bfff7322661a49a5ce0b5d13d78cf2732eae007f9f735"
    end
    on_arm do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.1.0/hybridgrid_0.1.0_darwin_arm64.tar.gz"
      sha256 "35e3ecb7edf5da1786cb0ac1e121bf3c4563aa99e8e22b369ca13deea9b44490"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.1.0/hybridgrid_0.1.0_linux_amd64.tar.gz"
      sha256 "f46663c94dfe0552326dadf1c189eaff39b5265a8e0591b60032140dfb437b42"
    end
    on_arm do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.1.0/hybridgrid_0.1.0_linux_arm64.tar.gz"
      sha256 "271baafbcc51caba9a1c776521bb3a0072e466a29609b5b7457c265c03b37319"
    end
  end

  def install
    bin.install "hg-coord"
    bin.install "hg-worker"
    bin.install "hgbuild"
  end

  test do
    system "#{bin}/hgbuild", "version"
  end
end
