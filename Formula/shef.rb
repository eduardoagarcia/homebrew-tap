class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.8"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.8/shef_darwin_amd64.tar.gz"
        sha256 "9120f3cc060010114161b9aa4eb4453ea6703f7b584618c4c73d2461e2ac36ea"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.8/shef_darwin_arm64.tar.gz"
        sha256 "891e174d4904cc7eaa4c4167f9fb33efdba914c2b610a8f34fe2416440f149c2"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
