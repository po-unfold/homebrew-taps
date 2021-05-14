# Created with sailboat, the Python releaser

# v0.0.7

class Pushing_Outshoot_Unfold < Formula
  include Language::Python::Virtualenv

  desc "A game about a teen getting through quarantine in Covid."
  homepage "https://github.com/po-unfold"
  url "https://files.pythonhosted.org/packages/82/52/c6eb6ddcf28d560b98bfb5583a90654311031d7b0d21455a26705957c3e2/pushing_outshoot_unfold-0.0.7.tar.gz" # These lines must be configured during release, not build.
  sha256 "4e9eb31b3bc801f076f682695a5268c2bb4af87564e43520117912519cdf867d" # ^^^
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
   resource "logging" do
      url "https://files.pythonhosted.org/packages/93/4b/979db9e44be09f71e85c9c8cfc42f258adfb7d93ce01deed2788b2948919/logging-0.4.9.6.tar.gz"
      sha256 "26f6b50773f085042d301085bd1bf5d9f3735704db9f37c1ce6d8b85c38f2417"
   end


  def install
    virtualenv_install_with_resources
  end
end