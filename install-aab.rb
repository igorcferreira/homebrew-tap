class InstallAab < Formula
  desc "Bash script that can be used to install AAB files into connected Android devices"
  homepage "https://github.com/igorcferreira/install-aab"
  url "https://github.com/igorcferreira/install-aab/archive/refs/tags/1.0.1.tar.gz"
  sha256 "596c3445a72af1e7c5ef1ce0bd85aba9b05ecfc4e7f41f1f0f6bfe1d878213cf"
  license "Apache-2.0"
  head "https://github.com/igorcferreira/install-aab.git", branch: "main"

  depends_on "bundletool"

  def install
    bin.install "install-aab"
  end

  test do
    system "false"
  end
end
