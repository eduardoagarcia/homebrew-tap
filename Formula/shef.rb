class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.3.0"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.3.0/shef_darwin_amd64.tar.gz"
        sha256 "832de8f8ae4450ae07c1878c882ac0ea9d12d340b844d27d64f8c3f9eca675f0"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.3.0/shef_darwin_arm64.tar.gz"
        sha256 "24be38abc03aa3c38310296c80ea26531d89220f8c4323307ef9d9eb5db024c5"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
