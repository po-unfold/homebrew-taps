# Created with sailboat, the Python releaser

# v0.2.3-dev1

class Pushing_Outshoot_Unfold < Formula
  include Language::Python::Virtualenv

  desc "A game about a teen getting through quarantine in Covid."
  homepage "https://github.com/po-unfold"
  url "https://files.pythonhosted.org/packages/a2/6c/88689bede210baa2724597db2bda6da1e8142ae032f7c2b4664a9a372dc6/pushing_outshoot_unfold-0.2.3.tar.gz" # These lines must be configured during release, not build.
  sha256 "f6fbe23224b68b054738f7b75a3470db9596282a6ad82222fc40f4564f59f380" # ^^^
  license "none"

  livecheck do
    url :stable
  end

  depends_on "python@3.9"

   resource "blessed" do
      url "https://files.pythonhosted.org/packages/68/c7/5f21c1b0e7f343bad166c3139e594639cd54e9b97db7760dff035b35065e/blessed-1.18.0.tar.gz"
      sha256 "1312879f971330a1b7f2c6341f2ae7e2cbac244bfc9d0ecfbbecd4b0293bc755"
   end
   resource "toml" do
      url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
      sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
   end
   resource "replit" do
      url "https://files.pythonhosted.org/packages/b9/09/3d928139612e20a4d5661379d0f359b8b69f4a39fe9beb5e1df7e7c30652/replit-3.1.0.tar.gz"
      sha256 "fcea2df361a195ab6a6739ddba429227f36944075f8852e35f77a4031d263ab0"
   end


  def install
    virtualenv_install_with_resources
  end
end