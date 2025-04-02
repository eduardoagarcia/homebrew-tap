class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.7"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.7/shef_darwin_amd64.tar.gz"
        sha256 "3863213b714287d471dd98578597a6c1ea2f71318f6be1fe6dbecfd3c182d042"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.7/shef_darwin_arm64.tar.gz"
        sha256 "bd96e52341ab2b8f12a57740088ae93a459a0ece5f886b5ed1af151df90d1fc9"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
