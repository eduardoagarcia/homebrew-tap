class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.11"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.11/shef_darwin_amd64.tar.gz"
        sha256 "b7c27164bfa5aff1e8de01e2e442f8f49eeb57319444b30181444138bc0d6429"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.11/shef_darwin_arm64.tar.gz"
        sha256 "c7960aefc43a32cdd7a60c1faf9c1e457b14e4a00c4269ea364039e46e81be8d"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
