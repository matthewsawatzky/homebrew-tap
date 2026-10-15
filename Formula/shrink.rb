class Shrink < Formula
  desc "CLI media compression tool: video, images and audio via ffmpeg"
  homepage "https://github.com/matthewsawatzky/shrink"
  version "0.5.0"
  license "MIT"
  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.5.0/shrink-v0.5.0-darwin-amd64.tar.gz"
      sha256 "3a886b0524d878cddca079433f04b671c825d2b76ddbb649f2807437119a3dc6"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.5.0/shrink-v0.5.0-darwin-arm64.tar.gz"
      sha256 "3441c8c69bff5ffd0562604d25730193e9504cc3b59eb9ecc2e3c82be70ddbe5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.5.0/shrink-v0.5.0-linux-amd64.tar.gz"
      sha256 "0bd5b9f2201ac290b8ec87823d71c805589a0d912dafc01a16217b95ff8cba1e"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.5.0/shrink-v0.5.0-linux-arm64.tar.gz"
      sha256 "25b54cb01e4e00911ba192859c9e2f564976df841b2c3ca22dcb1b8a09061ff7"
    end
  end

  def install
    bin.install "shrink"
  end

  def caveats
    <<~EOS
      shrink shells out to ffmpeg and ffprobe (installed as a dependency).
      Some output formats need a full ffmpeg build with all encoders.
    EOS
  end
end
