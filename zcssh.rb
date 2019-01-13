class Zcssh < Formula
    desc "Fast ClusterSSH for iTerm2 (OSX)"
    homepage "https://github.com/zoidbb/zcssh"
    url "https://github.com/zoidbb/zcssh/archive/v0.1.0.tar.gz"
    sha256 "8b8170a81eccfa5105f9150cbfe4d9cefda09cb653e26854b844b1f7a3197e28"
    head "https://github.com/zoidbb/zcssh.git"

    def install
        bin.install "zcssh"
    end
end
