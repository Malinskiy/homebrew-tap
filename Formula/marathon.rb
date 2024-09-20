class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://docs.marathonlabs.io/runner/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.10.2/marathon-0.10.2.zip"
  sha256 "ce6db74599d5aa5c0bf14e1a8284b8100f3dfec185c44fa789c27ef71838e8ee"
  version "0.10.2"
  license "GPL-2.0-only"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end
end
