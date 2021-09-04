class Crabz< Formula
  desc "Cross platform, fast, compression and decompression tool."
  homepage "https://github.com/sstadick/crabz"
  license any_of: ["MIT", "Unlicense"]
  version "0.6.0"

  if OS.linux?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.6.0/crabz-linux-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-linux-amd64"
    sha256 "ad148df78bfd6d8a282914651e5e18a53c07207db4493be30be6cef1b8fe067d"
  elsif OS.mac?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.6.0/crabz-macos-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-macos-amd64"
    sha256 "aeec42f4236676d2b78bd7746add676c7c4f5c816b648baf4a7ece20676ec5bc"
  end

  def install
    `mv crabz-* crabz`
    bin.install "crabz"
  end
end
