# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aem < Formula
  desc "Command line tool for AEM"
  homepage "https://github.com/jlentink/aem"
  version "1.0.0rc17"
  license "GPL-2.0 License"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlentink/aem/releases/download/1.0.0rc17/aem_Darwin_x86_64.tar.gz"
    sha256 "644821dfc7cb83251a591a16e596f382b3e2834353bf25f56c990ae1cf32c895"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jlentink/aem/releases/download/1.0.0rc17/aem_Linux_x86_64.tar.gz"
    sha256 "4400b0838df765a15872d19636a7a6af75768beee3da5ac4462172e1aa4c8711"
  end

  depends_on "go"

  def install
    bin.install "aem"
    bash_completion.install "completions/aem.bash" => "aem"
    zsh_completion.install "completions/aem.zsh" => "_aem"
    fish_completion.install "completions/aem.fish"
  end

  test do
    system "#{bin}/aem -v"
  end
end