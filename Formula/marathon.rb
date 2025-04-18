class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://docs.marathonlabs.io/runner/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.10.4/marathon-0.10.4.zip"
  sha256 "762b2b578bc9988695b0b148cb1a3c0eb7a1ffccc9c02b5ab66ef63b37266f06"
  version "0.10.4"
  license "GPL-2.0-only"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end
end
