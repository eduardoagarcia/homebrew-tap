class Shef < Formula
    desc "Shef is a powerful CLI tool for cooking up shell recipes."
    homepage "https://github.com/eduardoagarcia/shef"
    license "MIT"

    version "v0.1.7"

    # Intel Mac
    if Hardware::CPU.intel?
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.7/shef_darwin_amd64.tar.gz"
        sha256 "4ea3c6cb19c2e35151e23c4ff3fd8616fdf2e53d706b932ee602d45466164374"
    # Apple Silicon
    else
        url "https://github.com/eduardoagarcia/shef/releases/download/v0.1.7/shef_darwin_arm64.tar.gz"
        sha256 "adda35a1ee7834c595803377a4e63bc407c59ffbcbaa37361eef743ffb7fd60d"
    end

    def install
        binary = Dir["**/shef"].first || Dir["**/shef.exe"].first
        bin.install binary => "shef"
    end

    test do
        system "#{bin}/shef", "--version"
    end
end
