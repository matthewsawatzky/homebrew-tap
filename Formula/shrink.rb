class Shrink < Formula
  desc "CLI media compression tool: video, images and audio via ffmpeg"
  homepage "https://github.com/matthewsawatzky/shrink"
  version "0.6.0"
  license "MIT"
  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.6.0/shrink-v0.6.0-darwin-amd64.tar.gz"
      sha256 "647948bb2c5dd227f544d31dbbd8faa33eae3ac2495b2903cd24d45bc2580243"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.6.0/shrink-v0.6.0-darwin-arm64.tar.gz"
      sha256 "d50903323d4b895e8da0cda116c6be0f7867f9250cdb1f18be92d53e694b4ba4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.6.0/shrink-v0.6.0-linux-amd64.tar.gz"
      sha256 "48a77a922ae4d8836e74b7e8ba08706a665326b70493398d66e177dedc0f8577"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.6.0/shrink-v0.6.0-linux-arm64.tar.gz"
      sha256 "f4327e43dc3f41d39ceb83d89b30ec0d7d86ff5cc216e68e7dee428b12b488b5"
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
