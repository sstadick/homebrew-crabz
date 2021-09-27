class Crabz< Formula
  desc "Cross platform, fast, compression and decompression tool."
  homepage "https://github.com/sstadick/crabz"
  license any_of: ["MIT", "Unlicense"]
  version "0.6.3"

  if OS.linux?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.6.3/crabz-linux-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-linux-amd64"
    sha256 "d25c8854327663793cd9ca62924a8d3745239f5252a1d362d7f3015e6ab758c6"
  elsif OS.mac?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.6.3/crabz-macos-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-macos-amd64"
    sha256 "96696ce8451b5b50e83219aff9f709e3203a8fb3b9b26a41dbf5ddc836d74e68"
  end

  def install
    `mv crabz-* crabz`
    bin.install "crabz"
  end
end
