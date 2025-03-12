class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.4"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.4/shef_darwin_amd64.tar.gz"
        sha256 "b40cae8e46040e88f6e372f3fb01e1d416f91ebfdbec99bac3760a3abe34fa05"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.4/shef_darwin_arm64.tar.gz"
        sha256 "b10e1497217729bb7858140eb60ee8ea29fb19341e14c180e7f375e776dab114"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
