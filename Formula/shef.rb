class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.5"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.5/shef_darwin_amd64.tar.gz"
        sha256 "49bb314cea5ef803e7f5d08fc8c65f55997c9ef88b6cdfd073a8300e0d287796"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.5/shef_darwin_arm64.tar.gz"
        sha256 "3d4c5a5e7ade9264e3caf21854f4f48a4cfa487e62654758e63019c932b8cee1"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
