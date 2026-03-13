# typed: false
# frozen_string_literal: true

class MarathonCloud < Formula
  desc "Command-line interface for Marathon Cloud"
  homepage "https://github.com/MarathonLabs/marathon-cloud-cli"
  version "1.0.59"
  license "MIT"

  on_macos do
    url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.59/marathon-cloud-v1.0.59-universal-apple-darwin.tar.gz"
    sha256 "d0b7e639a3d1dfa855ca9045bf845f2aaa58503966fc6e7b044b91bd5824ce38"

    def install
      bin.install "marathon-cloud"
      generate_completions_from_executable(bin/"marathon-cloud", "completions", base_name: "marathon-cloud")
      man1.install Dir["*.1"]
    end

    def caveats; <<~EOS
      ⚠️  To have superior experience, enable autocompletion on Brew. ⚠️
      You need to enable autocompletion just once for Brew. If it is already enabled, you can skip this part.
      ▪ For Zsh users:
        Follow https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
      ▪ For Bash users:
        1) `brew install bash-completion` and follow the printed \"Caveats\" section. Example \"Caveats\" instructions:
           Add the following line to your ~/.bash_profile:
           # !! Note that paths may differ depending on your installation, so you should follow the Caveats section on your system.
           [[ -r \"/Users/anton/.brew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/anton/.brew/etc/profile.d/bash_completion.sh\"
        2) `source ~/.bash_profile`
    EOS
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.59/marathon-cloud-v1.0.59-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e994a2a38d4eecff229a94a6020f9b1353f0607338392f531944fbae327f5d8"

      def install
        bin.install "marathon-cloud"
        generate_completions_from_executable(bin/"marathon-cloud", "completions", base_name: "marathon-cloud")
        man1.install Dir["*.1"]
      end

      def caveats; <<~EOS
        ⚠️  To have superior experience, enable autocompletion on Brew. ⚠️
        You need to enable autocompletion just once for Brew. If it is already enabled, you can skip this part.
        ▪ For Zsh users:
          Follow https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
        ▪ For Bash users:
          1) `brew install bash-completion` and follow the printed \"Caveats\" section. Example \"Caveats\" instructions:
             Add the following line to your ~/.bash_profile:
             # !! Note that paths may differ depending on your installation, so you should follow the Caveats section on your system.
             [[ -r \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\"
          2) `source ~/.bash_profile`
      EOS
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.59/marathon-cloud-v1.0.59-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbfdba8adfbb5590c9ffae797c9fd85ed72c4929c390736c3c0cf5fd3d2b6b45"

      def install
        bin.install "marathon-cloud"
        generate_completions_from_executable(bin/"marathon-cloud", "completions", base_name: "marathon-cloud")
        man1.install Dir["*.1"]
      end

      def caveats; <<~EOS
        ⚠️  To have superior experience, enable autocompletion on Brew. ⚠️
        You need to enable autocompletion just once for Brew. If it is already enabled, you can skip this part.
        ▪ For Zsh users:
          Follow https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
        ▪ For Bash users:
          1) `brew install bash-completion` and follow the printed \"Caveats\" section. Example \"Caveats\" instructions:
             Add the following line to your ~/.bash_profile:
             # !! Note that paths may differ depending on your installation, so you should follow the Caveats section on your system.
             [[ -r \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\"
          2) `source ~/.bash_profile`
      EOS
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.59/marathon-cloud-v1.0.59-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "cd798e931d897125ebd05f0ccac9c01a4ba88066c587817046c9fe0c26aba0f0"

      def install
        bin.install "marathon-cloud"
        generate_completions_from_executable(bin/"marathon-cloud", "completions", base_name: "marathon-cloud")
        man1.install Dir["*.1"]
      end
      
      def caveats; <<~EOS
        ⚠️  To have superior experience, enable autocompletion on Brew. ⚠️
        You need to enable autocompletion just once for Brew. If it is already enabled, you can skip this part.
        ▪ For Zsh users:
          Follow https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
        ▪ For Bash users:
          1) `brew install bash-completion` and follow the printed \"Caveats\" section. Example \"Caveats\" instructions:
             Add the following line to your ~/.bash_profile:
             # !! Note that paths may differ depending on your installation, so you should follow the Caveats section on your system.
             [[ -r \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\"
          2) `source ~/.bash_profile`
      EOS
      end
    end
  end
end
