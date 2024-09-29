class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://docs.marathonlabs.io/runner/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.10.3/marathon-0.10.3.zip"
  sha256 "e3c923445fb19fa9dc1294ec3e1dc9175f85dcc3e8e6aa0ae26390becba62279"
  version "0.10.3"
  license "GPL-2.0-only"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end
end
