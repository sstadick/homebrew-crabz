class Crabz< Formula
  desc "Cross platform, fast, compression and decompression tool."
  homepage "https://github.com/sstadick/crabz"
  license any_of: ["MIT", "Unlicense"]
  version "0.6.1"

  if OS.linux?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.6.1/crabz-linux-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-linux-amd64"
    sha256 "ba89d9aea6da75a953daca7acab627496e5ec50689000a05fdf63bb0423ea3a0"
  elsif OS.mac?
    # wget -q -S -O - https://github.com/sstadick/crabz/releases/download/v0.6.1/crabz-macos-amd64 | shasum -a 256
    url "https://github.com/sstadick/crabz/releases/download/v#{version}/crabz-macos-amd64"
    sha256 "ad84fd3733844272e958d5c6bfd5c1fa39977e3b3f72d4319732c83817eed5b2"
  end

  def install
    `mv crabz-* crabz`
    bin.install "crabz"
  end
end
