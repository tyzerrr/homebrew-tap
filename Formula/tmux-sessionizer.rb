class TmuxSessionizer < Formula
  desc "Tmux session manager with fzf"
  homepage "https://github.com/TlexCypher/tmux-sessionizer"
  version "v1.0.0"

  if OS.mac?
    url "https://github.com/TlexCypher/tmux-sessionizer/releases/download/v1.0.0/tmux-sessionizer_Darwin_arm64.tar.gz"
    sha256 "7fa1039933f1acf3cf056b575ba940e1602341acd93403361cffb5fc54ddca86"
  elsif OS.linux?
    url "https://github.com/TlexCypher/tmux-sessionizer/releases/download/v1.0.0/tmux-sessionizer_Linux_x86_64.tar.gz"
    sha256 "eb1776d488fa71467f4a59e22a50ca65aa7a25c4c587816c99b88f2dfb809493"
  end

  def install
    bin.install "tmux-sessionizer"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/tmux-sessionizer --help")
  end
end

