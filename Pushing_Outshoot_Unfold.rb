# Created with sailboat, the Python releaser

# v0.2.1

class Pushing_Outshoot_Unfold < Formula
  include Language::Python::Virtualenv

  desc "A game about a teen getting through quarantine in Covid."
  homepage "https://github.com/po-unfold"
  url "https://files.pythonhosted.org/packages/a3/8c/8f08bc1e456faa22c840a434bb1a74fa19f5cb66a5594aeabbb62fd67fa9/pushing_outshoot_unfold-0.2.0.tar.gz" # These lines must be configured during release, not build.
  sha256 "a09a74a31c2e7b4a4144a4fbb17b339012a11b04778e1153fdf4fdc6a6601aaa" # ^^^
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
      url "https://files.pythonhosted.org/packages/d5/38/25302e99658cfab0ec97eead856f27153d14d896f19dfa0eb972976908fc/replit-3.0.0.tar.gz"
      sha256 "7558e5ce46333062849b2c3be058a90d7769f6d7b1ad2382e78981cfaede2aa1"
   end


  def install
    virtualenv_install_with_resources
  end
end