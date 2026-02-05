# typed: false
# frozen_string_literal: true

# ghaction formula
class Ghaction < Formula
  desc "CLI tool to trigger and monitor GitHub Actions workflows"
  homepage "https://github.com/igorcferreira/GHActionTrigger"
  url "https://github.com/igorcferreira/GHActionTrigger/releases/download/v1.0.1/ghaction-v1.0.1-macos-universal.tar.gz"
  sha256 "09c02b8a12b3f0779e260a9df1c5f9a790a95a4a8d719bb8a10a88f1265ea33e"
  license "MIT"
  version "1.0.1"

  def install
    bin.install "ghaction"
  end

  test do
    assert_match "ghaction", shell_output("#{bin}/ghaction --help")
  end
end
