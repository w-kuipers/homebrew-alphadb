class Alphadb < Formula
  desc "SQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  version "1.0.0-beta.48"

  on_macos do
    on_arm do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-aarch64.tar.gz"
      sha256 "2190608cf34202250582126aa362538687e35d467915122e296d11b470ac1633"
    end
    on_intel do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-x86_64.tar.gz"
      sha256 "444f6ccd5cf0fe74d78b2df016c78de4b8abcf4a8035e253e9c9ab2ee0f5d12e"
    end
  end

  on_linux do
    url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Linux-x86_64.tar.gz"
    sha256 "a6d86b7eeec0b8d4bc15d8fec70fe47960d85eb4eef7b1464d1ccdada17d7939"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
