class Shrink < Formula
  desc "CLI media compression tool: video, images and audio via ffmpeg"
  homepage "https://github.com/matthewsawatzky/shrink"
  version "0.3.0"
  license "MIT"
  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.3.0/shrink-v0.3.0-darwin-amd64.tar.gz"
      sha256 "3d64e98ad26eec3c6bc3963f059ce6655207d9f0697a11d9902f55d42305baab"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.3.0/shrink-v0.3.0-darwin-arm64.tar.gz"
      sha256 "532b3f9a11395357d623c3a5a68c3bc4c92d9be55bde916769d7e6d198a58b8c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.3.0/shrink-v0.3.0-linux-amd64.tar.gz"
      sha256 "886956b812795d9eabe62803892fd264eaf4c3c85e529737688845698d719bc8"
    else
      url "https://github.com/matthewsawatzky/shrink/releases/download/v0.3.0/shrink-v0.3.0-linux-arm64.tar.gz"
      sha256 "ab3b30f6b7a573e34aa5fa8b43f44aa557e5cd44c4e61b460f7cf30aaf0a85c2"
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
