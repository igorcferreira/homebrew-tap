# typed: false
# frozen_string_literal: true

# install-aab formula
class InstallAab < Formula
  desc "Bash script that can be used to install AAB files into connected Android devices"
  homepage "https://github.com/igorcferreira/install-aab"
  url "https://github.com/igorcferreira/install-aab/releases/download/1.1.0/install-aab"
  sha256 "44feaa50d24462dcf6826c855c825ab4492c28ab3c3b7d667888f096c57e6b9b"
  license "MIT"
  head "https://github.com/igorcferreira/install-aab.git", tag: "1.1.0"

  depends_on "bundletool"

  def install
    bin.install "install-aab"
  end

  test do
    system "false"
  end
end
