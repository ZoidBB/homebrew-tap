class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.2.3.tar.gz"
    sha256 "c9fe5fe028acdbc972e1e1db3cb79b6faa58e0ae4a2a74fec938e67ec0155682"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    depends_on "python3"
    depends_on "zcssh"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-r", "requirements.txt"
        bin.install "ec2-zcssh"
    end
end
