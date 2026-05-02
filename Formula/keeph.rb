class Keeph < Formula
  desc "Keep your Mac awake for exactly N hours, then auto-restore sleep"
  homepage "https://github.com/ww-w-ai/keeph"
  url "https://github.com/ww-w-ai/keeph/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "953bcae5650be11b547a23fb2f03a0b098f8d1ccbcf69e61ec93036a2838aa7e"
  license "MIT"

  depends_on :macos

  def install
    (share/"keeph").install "keeph.zsh"
  end

  def caveats
    <<~EOS
      keeph is a zsh function. Add this line to your ~/.zshrc:

        source #{opt_share}/keeph/keeph.zsh

      Then reload your shell and run:

        keeph -h

      Optional — skip the sudo password prompt for pmset:
        See the comments at the top of keeph.zsh for the one-time
        sudoers setup snippet.
    EOS
  end

  test do
    output = shell_output("/bin/zsh -c 'source #{share}/keeph/keeph.zsh && keeph -h'")
    assert_match "keeph - prevent macOS sleep", output
  end
end
