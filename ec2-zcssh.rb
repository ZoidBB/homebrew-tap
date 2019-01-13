class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.1.2.tar.gz"
    sha256 "9b6f568d11a4aeccb6b8a898a819ce624f6b425486dfe4e2d82d091a3f8f9108"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    depends_on "python"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-r", "requirements.txt"
        bin.install "ec2-zcssh"
    end
end
