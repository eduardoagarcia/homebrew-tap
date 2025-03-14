class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.6"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.6/shef_darwin_amd64.tar.gz"
        sha256 "0c06fc79c8f28fb46403374113b7fba6a2f0af45d876ada2a43c95e52e05954f"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.6/shef_darwin_arm64.tar.gz"
        sha256 "4e4a600a5b7ca9ccddc216cb70233feece4faa281e733623699188bb79472ce4"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
