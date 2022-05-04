# typed: false
# frozen_string_literal: true

# install-aab formula
class InstallAab < Formula
  desc "Bash script that can be used to install AAB files into connected Android devices"
  homepage "https://github.com/igorcferreira/install-aab"
  url "https://github.com/igorcferreira/install-aab/releases/download/1.0.2/install-aab"
  sha256 "85e16577b5954a7b9bac74a38d14270a3c1e2fab7a8fcfe164d92cdfb28938b7"
  license "MIT"
  head "https://github.com/igorcferreira/install-aab.git", tag: "1.0.2"

  depends_on "bundletool"

  def install
    bin.install "install-aab"
  end

  test do
    system "false"
  end
end
