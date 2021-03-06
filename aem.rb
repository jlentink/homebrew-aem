# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aem < Formula
  desc "Command line tool for AEM"
  homepage "https://github.com/jlentink/aem"
  version "1.0.4"
  license "GPL-2.0 License"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jlentink/aem/releases/download/1.0.4/aem_MacOS_x86_64.tar.gz"
      sha256 "f2de6b1831b763acc86b03e65735bd699b87dd8e62d54bcea07c59f8cb161932"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jlentink/aem/releases/download/1.0.4/aem_Linux_x86_64.tar.gz"
      sha256 "58920ccdef86db2d9c1a4f239ffb972a58f4ef45026d69210f961f86c0fdeb04"
    end
  end

  depends_on "go"

  def install
    bin.install "aem"
    bash_completion.install "completions/aem.bash" => "aem"
    zsh_completion.install "completions/aem.zsh" => "_aem"
  end

  test do
    system "#{bin}/aem -v"
  end
end
