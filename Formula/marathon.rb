class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://docs.marathonlabs.io/runner/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.10.5/marathon-0.10.5.zip"
  sha256 "12c0fd0a900f944b716e3fead13c8504a8d74202f396c6b5ecc055ef525269c8"
  version "0.10.5"
  license "GPL-2.0-only"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end
end
