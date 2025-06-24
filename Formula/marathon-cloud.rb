# typed: false
# frozen_string_literal: true

class MarathonCloud < Formula
  desc "Command-line interface for Marathon Cloud"
  homepage "https://github.com/MarathonLabs/marathon-cloud-cli"
  version "1.0.49"
  license "MIT"

  on_macos do
    url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.49/marathon-cloud-v1.0.49-universal-apple-darwin.tar.gz"
    sha256 "cb514d1882271c20e8a6b7bb2ee281d926d2699e152fdacd8e1034855a3e726a"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.49/marathon-cloud-v1.0.49-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ceb7327ad51a0235317c3b56f40d9621a25239bb793d5e5e917f2f2a9e80e48"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.49/marathon-cloud-v1.0.49-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed1b563ef2ef5f566f2b2e2b7cb7c2829cb1dc8c48da6eeb1cd521d882adfb70"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.49/marathon-cloud-v1.0.49-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "2e2fa4e81748c84b31b32597902bbab3d31368a731cfb9a720cefb7d8fbae095"

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
