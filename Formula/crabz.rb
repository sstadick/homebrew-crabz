class Crabz< Formula
  desc "Cross platform, fast, compression and decompression tool."
  homepage "https://github.com/sstadick/crabz"
  license any_of: ["MIT", "Unlicense"]
  version "0.6.3"

  if OS.linux?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.7.1/crabz-linux-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-linux-amd64"
    sha256 "ded7657727c126d696c853eed637161b96e129bb4d2d65938f5b81d449137b57"
  elsif OS.mac?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.7.1/crabz-macos-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-macos-amd64"
    sha256 "f5b7b86f99a74f7ae08ce31fef4e4ca5440295ded339d6048baaf54716e8c281"
  end

  def install
    `mv crabz-* crabz`
    bin.install "crabz"
  end
end
