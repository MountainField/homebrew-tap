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

  # depends_on "cmake" => :build
  depends_on "python"

  version "0.0.7"
  url "https://files.pythonhosted.org/packages/86/be/d8707b024a9cd068cbb69e5502c3075033d8dc385f56c714dfa246bc5f62/python-dw-0.0.7.tar.gz"
  sha256 "aeb0379bbdee7edcf838251ad418f12ea5c160b783879bfc52d61e0c9473b9c5"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
    sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
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
