class Shef < Formula
  desc "Shef is a powerful CLI tool for cooking up shell recipes."
  homepage "https://github.com/eduardoagarcia/shef"
  license "MIT"

  version "v0.1.3"

  # Intel Mac
  if Hardware::CPU.intel?
    url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.3/shef_darwin_amd64.tar.gz"
    sha256 "1dfb46b7b4fd830693b28ae92a89fdcd95865df75663ea35bca057194da3d0c4"
  # Apple Silicon
  else
    url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.3/shef_darwin_arm64.tar.gz"
    sha256 "7654e25b7b86cbfebaf57ffb34cda6604c6142b0356abdc51f671c4df8f1d959"
  end

  def install
    bin.install "shef_darwin_amd64/shef" if Hardware::CPU.intel?
    bin.install "shef_darwin_arm64/shef" if Hardware::CPU.arm64?
  end

  test do
    system "#{bin}/shef", "--version"
  end
end
