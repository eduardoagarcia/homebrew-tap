class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.4"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.4/shef_darwin_amd64.tar.gz"
        sha256 "3ef1aee99518bf023f461fd1e3e1aa4dc8280bb132f59be73a785d6743e1c81c"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.4/shef_darwin_arm64.tar.gz"
        sha256 "c39c30e30df23948b4ad8a014ecc1c0e1f35a9e6498e5381802671a18e13e5d5"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
