class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "---version---"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/---version---/shef_darwin_amd64.tar.gz"
        sha256 "---darwin_amd64_sha256---"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/---version---/shef_darwin_arm64.tar.gz"
        sha256 "---darwin_arm64_sha256---"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
