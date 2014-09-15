require "formula"

class Bamm < Formula
  homepage "http://bamm-project.org"
  url "https://github.com/macroevolution/bamm.git", :tag => "v2.2.0"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
