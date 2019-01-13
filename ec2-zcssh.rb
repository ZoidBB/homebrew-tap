class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.2.1.tar.gz"
    sha256 "8a4e9101a7326b22cd18c530f3780c295b6da0210d0a8a70d47ff2ca80c247e9"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    depends_on "python"
    depends_on "zcssh"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-r", "requirements.txt"
        bin.install "ec2-zcssh"
    end
end
