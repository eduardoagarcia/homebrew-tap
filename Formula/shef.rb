class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.0"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.0/shef_darwin_amd64.tar.gz"
        sha256 "9ae9c89680296725fa86d4241f5d5767ad3008c6ee1a38ddc468692989d331e1"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.0/shef_darwin_arm64.tar.gz"
        sha256 "b4da5cb2cfb2ede07073603def05306fbb6897186b14aaad7683ed5b8e67732c"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
