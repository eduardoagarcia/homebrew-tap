class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.1"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.1/shef_darwin_amd64.tar.gz"
        sha256 "f481f11095d0c31a84cc8c96ad998f674213dff0243b42f4fb9ea9e9e0e4f929"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.1/shef_darwin_arm64.tar.gz"
        sha256 "a41d73708ceae283d5e6d99a22c20b3a4ee269df1d37e794bdf1a90f48e93c6e"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
