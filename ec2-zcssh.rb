class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.2.2.tar.gz"
    sha256 "35353b8a5919f071fad9fc1dbddf2ecb9bab93247ee585398f3ad222f9662d46"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    depends_on "python"
    depends_on "zcssh"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-r", "requirements.txt"
        bin.install "ec2-zcssh"
    end
end
