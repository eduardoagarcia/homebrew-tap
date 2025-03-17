class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.12"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.12/shef_darwin_amd64.tar.gz"
        sha256 "dbb0115a9f4c17cc8d2f2052ba43287a9c7b92543cbd1bfe3e0fc77e077bf007"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.12/shef_darwin_arm64.tar.gz"
        sha256 "eb1fbe51ca032ba1031b9f9c1a85d1535192468359c4a9a5bd4b1478689876b0"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
