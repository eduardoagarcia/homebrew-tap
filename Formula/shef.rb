class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.10"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.10/shef_darwin_amd64.tar.gz"
        sha256 "59227d1e6296e6469a0a47bf6f5550e8eb4757c9ef08e0400221a14a97364369"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.10/shef_darwin_arm64.tar.gz"
        sha256 "d00ad7d30b9bc26f52822191c45eb2aa257ad494fe1ef1664dfbbef398aba4e2"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
