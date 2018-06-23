#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class BashTimeout < Formula
  desc "A command (and also bash function) to terminate another command after specified duration"
  homepage "https://github.com/nogayama/bash-timeout"
  version "1.1.1"

  url "https://github.com/nogayama/bash-timeout/archive/v1.1.1.tar.gz"
  
  def install
    bin.install "bin/bash-timeout"
  end
end