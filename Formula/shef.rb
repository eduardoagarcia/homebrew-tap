class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.14"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.14/shef_darwin_amd64.tar.gz"
        sha256 "7bfe8f03d14cb16caf65ff0bb179fef42d25ddd3df2ab053e0b2486b0f89271b"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.14/shef_darwin_arm64.tar.gz"
        sha256 "024fc47a0ff6ac227263a7d81eb7709f4d4612ed480ea3f2a6b35601b3261e52"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
