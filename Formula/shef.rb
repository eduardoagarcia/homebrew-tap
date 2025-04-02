class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.6"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.6/shef_darwin_amd64.tar.gz"
        sha256 "5bb4f2ebf2d455da3fb046b0809099a15fac838c279e51b2784944544780e258"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.6/shef_darwin_arm64.tar.gz"
        sha256 "7db024ed1ed59be2b9e0a72c3a7913d534d0be84aced6ae4d12ad5e18861671b"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
