class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.13"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.13/shef_darwin_amd64.tar.gz"
        sha256 "eb58e6ffdd9a4b95ef074b86182cfea815fa02ebf6b6b1079ea6d9a01e2918d5"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.13/shef_darwin_arm64.tar.gz"
        sha256 "f7ae730d2586cb2c8cf48d442744e52403ba580be3ae868a467a026a713a0f3d"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
