# Created with sailboat, the Python releaser

# v0.0.2-rc1

class Pushing_Outshoot_Unfold < Formula
  include Language::Python::Virtualenv

  desc "A game about a teen getting through quarantine in Covid."
  homepage "https://github.com/po-unfold"
  url "https://files.pythonhosted.org/packages/e3/4b/83cee12cd62c893ec9e0a3ce3d38e6414366c482828280acd6940809d680/pushing_outshoot_unfold-0.0.1.tar.gz" # These lines must be configured during release, not build.
  sha256 "8a4fff9cae379e563f5f3119209bc096e38b5a9f6679fd4c84167cc55a01b984" # ^^^
  license "none"

  livecheck do
    url :stable
  end

  depends_on "python@3.9"

   resource "blessed" do
      url "https://files.pythonhosted.org/packages/68/c7/5f21c1b0e7f343bad166c3139e594639cd54e9b97db7760dff035b35065e/blessed-1.18.0.tar.gz"
      sha256 "1312879f971330a1b7f2c6341f2ae7e2cbac244bfc9d0ecfbbecd4b0293bc755"
   end


  def install
    virtualenv_install_with_resources
  end
end