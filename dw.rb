#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dw < Formula
  include Language::Python::Virtualenv

  desc "dw is a lightweight data wrangling tool for command line"
  homepage "https://github.com/MountainField/dw"
  license "MIT"

  url "https://github.com/MountainField/dw/releases/download/v0.0.4/python-dw-0.0.4.tar.gz"
  sha256 "155ce0e20f94b2dcf41e7e17db97d36b0261c3c5566012a8b9916e0c9dd5f0bc"
  version "0.0.4"


  # depends_on "cmake" => :build
  depends_on "python"

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
