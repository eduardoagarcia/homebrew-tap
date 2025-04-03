class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.2.8"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.8/shef_darwin_amd64.tar.gz"
        sha256 "7d2c0bc45755792b6f34400f0a6b7cf5a6a46052095b72de4ce788687b0c80ae"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.2.8/shef_darwin_arm64.tar.gz"
        sha256 "92267808f02fe26120baedb41c1174a7b7b1c7e61cdd238101a2ebc8f9f97f63"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
