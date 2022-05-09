class Crabz< Formula
  desc "Cross platform, fast, compression and decompression tool."
  homepage "https://github.com/sstadick/crabz"
  license any_of: ["MIT", "Unlicense"]
  version "0.7.3"

  if OS.linux?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.7.3/crabz-linux-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-linux-amd64"
    sha256 "d89938d5e8b7d7c1fa71cfd68885d4fd1a1effb3d901b55512c460d0341394a6"
  elsif OS.mac?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.7.3/crabz-macos-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-macos-amd64"
    sha256 "198e73ad7324692d7d7fbb49a4ac68fe71124e7f36f2c39a208b35517a808a5f"
  end

  def install
    `mv crabz-* crabz`
    bin.install "crabz"
  end
end
