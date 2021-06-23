# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dw < Formula
  include Language::Python::Virtualenv
  
  version "1.0.1"
  desc "dw is a lightweight data wrangling tool for command line"
  homepage "https://github.com/MountainField/dw"
  url "https://github.com/MountainField/dw/releases/download/v1.0.1/py-dw-1.0.1.tar.gz"
  sha256 "1802e7f08c388d7bfcfc50dadb599e9eb0c2aef04da08a74e3f7acef1ecd1c50"
  license "MIT"

  # depends_on "cmake" => :build
  depends_on "python"
  resource "dw" do
    url "https://github.com/MountainField/dw/releases/download/v1.0.1/py-dw-1.0.1.tar.gz"
    sha256 "1802e7f08c388d7bfcfc50dadb599e9eb0c2aef04da08a74e3f7acef1ecd1c50"
  end

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test dw`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
