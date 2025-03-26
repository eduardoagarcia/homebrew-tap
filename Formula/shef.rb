class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.2"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.2/shef_darwin_amd64.tar.gz"
        sha256 "1d5acb9378dbad6601b97a385132d7db6c607710b1bed69b690c2a20683874e9"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.2/shef_darwin_arm64.tar.gz"
        sha256 "9fc9028eef8e9d4716de1838b0a58610f24336c9dfc15613d57c7af6b3997ad9"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
