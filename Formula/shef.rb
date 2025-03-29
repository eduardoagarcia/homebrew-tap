class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.3"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.3/shef_darwin_amd64.tar.gz"
        sha256 "4666b86dd4611156a9bd805123c9f3d271c59cc2b5754656195ce26b412a7d23"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.3/shef_darwin_arm64.tar.gz"
        sha256 "d0fbd0eda1cc0fc17d467cebdd15f2a04ebad25f592a13dfa5dbdf9bfb36dbd0"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
