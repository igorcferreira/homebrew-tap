# typed: false
# frozen_string_literal: true

# ghaction formula
class Ghaction < Formula
  desc "CLI tool to trigger and monitor GitHub Actions workflows"
  homepage "https://github.com/igorcferreira/GHActionTrigger"
  url "https://github.com/igorcferreira/GHActionTrigger/releases/download/v1.0.2/ghaction-v1.0.2-macos-universal.tar.gz"
  sha256 "dff778491640874df7d5e533a31f353a9d2866bd6447d635e7ce384e543a099a"
  license "MIT"
  version "1.0.2"

  def install
    bin.install "ghaction"
  end

  test do
    assert_match "ghaction", shell_output("#{bin}/ghaction --help")
  end
end
