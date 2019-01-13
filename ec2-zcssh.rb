class Ec2Zcssh < Formula
    include Language::Python::Virtualenv
    desc "Fast ClusterSSH for iTerm2 (OSX) - AWS Enhanced"
    homepage "https://github.com/zoidbb/ec2-zcssh"
    url "https://github.com/zoidbb/ec2-zcssh/archive/v0.1.0.tar.gz"
    sha256 "c696488b764427626114f269eed86a4f8e5a37389989c36d95999dae28dca208"
    head "https://github.com/zoidbb/ec2-zcssh.git"

    resource "boto3" do
        url "https://files.pythonhosted.org/packages/b1/d8/4fc4930e7650d9af5301bd7c96f233fbbf9984c48ae43c22426607a1d89c/boto3-1.9.77.tar.gz"
        sha256 "3539636d0c883b9dfc0188bec3a1016cb6da1cdf3d4a4d77b54260b10a8d6e65"
    end

    resource "botocore" do
        url "https://files.pythonhosted.org/packages/c2/71/6762eecec25081f6c0d4d8592cac4ce7c742355b19cbe94eec0363dda1c6/botocore-1.12.77.tar.gz"
        sha256 "0fea3d60ed866cb622b34c2b1bff0e7b9ebcde6be5e0f6769f354f2ed5c9a602"
    end

    resource "docutils" do
        url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
        sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
    end

    resource "jmespath" do
        url "https://files.pythonhosted.org/packages/e5/21/795b7549397735e911b032f255cff5fb0de58f96da794274660bca4f58ef/jmespath-0.9.3.tar.gz"
        sha256 "6a81d4c9aa62caf061cb517b4d9ad1dd300374cd4706997aff9cd6aedd61fc64"
    end

    resource "python-dateutil" do
        url "https://files.pythonhosted.org/packages/0e/01/68747933e8d12263d41ce08119620d9a7e5eb72c876a3442257f74490da0/python-dateutil-2.7.5.tar.gz"
        sha256 "88f9287c0174266bb0d8cedd395cfba9c58e87e5ad86b2ce58859bc11be3cf02"
    end

    resource "s3transfer" do
        url "https://files.pythonhosted.org/packages/9a/66/c6a5ae4dbbaf253bd662921b805e4972451a6d214d0dc9fb3300cb642320/s3transfer-0.1.13.tar.gz"
        sha256 "90dc18e028989c609146e241ea153250be451e05ecc0c2832565231dacdf59c1"
    end

    resource "six" do
        url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
        sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
    end

    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/b1/53/37d82ab391393565f2f831b8eedbffd57db5a718216f82f1a8b4d381a1c1/urllib3-1.24.1.tar.gz"
        sha256 "de9529817c93f27c8ccbfead6985011db27bd0ddfcdb2d86f3f663385c6a9c22"
    end    

    def install
        virtualenv_install_with_resources :using => “python3”
        bin.install "ec2-ec2-zcssh"
    end
end
