# typed: false
# frozen_string_literal: true

# ghaction formula
class Ghaction < Formula
  desc "CLI tool to trigger and monitor GitHub Actions workflows"
  homepage "https://github.com/igorcferreira/GHActionTrigger"
  url "https://github.com/igorcferreira/GHActionTrigger/releases/download/v1.0.0/ghaction-v1.0.0-macos-universal.tar.gz"
  sha256 "0c89166db2b69abfc216e8d4c9ed00fab41b17054c86f6a4a790bee0458f50a3"
  license "MIT"
  version "1.0.0"

  def install
    bin.install "ghaction"
  end

  test do
    assert_match "ghaction", shell_output("#{bin}/ghaction --help")
  end
end
