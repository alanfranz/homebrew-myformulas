class RakeStandalone < Formula
  url "https://github.com/alanfranz/rake-standalone/archive/v1.zip"
  homepage ""
  sha256 "07e9363ecd070a8262a05519b87b4e8070da52a66737bb8f0de962b609a73175"

  # depends_on "cmake" => :build

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
#   system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
