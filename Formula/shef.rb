class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.3.3"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.3.3/shef_darwin_amd64.tar.gz"
        sha256 "00fb97d8465bd2e22d95e06d8ec1b4e88a34d8b123753177997d8a336303b058"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.3.3/shef_darwin_arm64.tar.gz"
        sha256 "1f0bf19a4bac0c49af4be0e2885525629537eeb712d8043dc949314661b314d1"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
