class Shrink < Formula
  desc "CLI media compression tool: video, images and audio via ffmpeg"
  homepage "https://github.com/matthewsawatzky/shrink"
  version "0.2.0"
  license "MIT"
  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.2.0/shrink-v0.2.0-darwin-amd64.tar.gz"
      sha256 "7869d910242432945cd6c08df75a6c9fa1fea5ad803c569fbec5aa01fda2bf9a"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.2.0/shrink-v0.2.0-darwin-arm64.tar.gz"
      sha256 "be66de1e2303daa83b1e47049726f689245e3035423296f7ce3759d6ff1fbe6b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.2.0/shrink-v0.2.0-linux-amd64.tar.gz"
      sha256 "449c8c4314c8c9883460714a045b9e950d43786f7e1d2a75e0da327268a02240"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.2.0/shrink-v0.2.0-linux-arm64.tar.gz"
      sha256 "80b580b3f6c3d0c855abe2514cbf7f5a16de5ebc16da93c9912543b9b75f8e77"
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
