class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.9"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.9/shef_darwin_amd64.tar.gz"
        sha256 "86f970a100355ee83843649abaf5a66d4c534ab84aa1dafc550728991655a512"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.9/shef_darwin_arm64.tar.gz"
        sha256 "b6d6ac7856ee1711ce0d92a547c5f6f3647b9075cbeba9393d333a4558439786"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
