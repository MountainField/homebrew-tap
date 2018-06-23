class BashTimeout < Formula
  desc "A command (and also bash function) to terminate another command after specified duration"
  homepage "https://github.com/nogayama/bash-timeout"

  url "https://github.com/nogayama/bash-timeout.git", :tag => "v1.1.1"
  head "https://github.com/nogayama/bash-timeout.git"
  version "1.1.1"
  
  def install
    bin.install "bin/bash-timeout"
  end
  test do
    system "false"
  end
end