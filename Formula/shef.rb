class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.3.1"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.3.1/shef_darwin_amd64.tar.gz"
        sha256 "68a47d042e513e78bcc1a2aaf702878a44e8be0dcfc074ffc14a6f084caba825"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.3.1/shef_darwin_arm64.tar.gz"
        sha256 "d9e1d73796091cd2392cece01952521974506aaaa1d8f4cdea97f5f19a8212a0"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
