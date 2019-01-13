class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.1.1.tar.gz"
    sha256 "8ad4fa4fd209cb009fcfff5567b60f67f2e79de20e10563e4ab748864cd50302"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    depends_on "python"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-r", "requirements.txt"
        bin.install "ec2-zcssh"
    end
end
