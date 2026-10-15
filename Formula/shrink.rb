class Shrink < Formula
  desc "CLI media compression tool: video, images and audio via ffmpeg"
  homepage "https://github.com/matthewsawatzky/shrink"
  version "0.4.0"
  license "MIT"
  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.4.0/shrink-v0.4.0-darwin-amd64.tar.gz"
      sha256 "8295608f5f508b00eadb6b90a6111a2d842943873c84a29a3367147f77aeb2f1"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.4.0/shrink-v0.4.0-darwin-arm64.tar.gz"
      sha256 "de3d95cf413b4d20f94101ddf3074d2784c57e1c94fb3b88f8a2b66e11e43f16"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.4.0/shrink-v0.4.0-linux-amd64.tar.gz"
      sha256 "5564468d78e4859d0dc21ce4f59cd513c81772f92cd0a3d545bb24117bc28f97"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.4.0/shrink-v0.4.0-linux-arm64.tar.gz"
      sha256 "f8d447d83e436c054693bcad3fed54852a52a4fa8b0a7db3dc8039b745c78493"
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
