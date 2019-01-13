class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.2.0.tar.gz"
    sha256 "a7ff3847a933dee7859e9a0e1ec8c31195a2a1ebca95c3d665525ed1ef571902"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    depends_on "python"
    depends_on "zcssh"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-r", "requirements.txt"
        bin.install "ec2-zcssh"
    end
end
