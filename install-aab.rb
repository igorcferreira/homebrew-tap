# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class InstallAab < Formula
  desc "Basic bash script that can be used to install AAB files into connected Android devices/emulators"
  homepage "https://github.com/igorcferreira/install-aab"
  license "Apache-2.0"
  sha256 "507901881669ec13b7254f55a5d61b2e17a0c7ca7d68453bb8db23c0ec6bf560"
  url "https://github.com/igorcferreira/install-aab/archive/refs/tags/1.0.0.tar.gz"

  depends_on "openjdk"
  depends_on "bundletool"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install 'install-aab'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test install-aab`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
