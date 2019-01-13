class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.1.3.tar.gz"
    sha256 "40782614ae333539f2f63485e20c879cc36ff7e46a3f93b0355160a1a3f97d9f"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    depends_on "python"
    depends_on "zcssh"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-r", "requirements.txt"
        bin.install "ec2-zcssh"
    end
end
