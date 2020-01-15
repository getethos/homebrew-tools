class AuthSupport < Formula
  desc "Init okta cli configuration"
  homepage "https://github.com/getethos/auth-support"
  url "https://github.com/getethos/auth-support/archive/v0.0.1.tar.gz"
  sha256 "a474cd4a39b09d2e084b019e92b98b6e1557630681839fac5a502c05a17129e2"
  depends_on "awscli"

  def install
    bin.install Dir["bin/*"]
  end
end
