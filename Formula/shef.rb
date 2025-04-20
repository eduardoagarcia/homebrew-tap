class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.3.2"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.3.2/shef_darwin_amd64.tar.gz"
        sha256 "923633e1c304ddc0a05e474b6ae21fff4e347f81302163a0d206efbb17b56910"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.3.2/shef_darwin_arm64.tar.gz"
        sha256 "eecc3c584a5f90186d88c54151895e257f29822745f83c0f2349cfa88a3bc828"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
