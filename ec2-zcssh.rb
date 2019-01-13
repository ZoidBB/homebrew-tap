class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.1.4.tar.gz"
    sha256 "f55fe93f5301f965198c7cffff79003fdec06e1af195cde1fe02c51a2cd63b6a"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    depends_on "python"
    depends_on "zcssh"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-r", "requirements.txt"
        bin.install "ec2-zcssh"
    end
end
