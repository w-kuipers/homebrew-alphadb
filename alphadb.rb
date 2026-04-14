class Alphadb < Formula
  desc "SQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  version "1.0.0-beta.42"

  on_macos do
    on_arm do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-aarch64.tar.gz"
      sha256 "9c7aeea1812c1a759e6ada9e1ba344965461ff259a6d2eaabf8a3dbb50deffa4"
    end
    on_intel do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-x86_64.tar.gz"
      sha256 "0a6eea40f8ca00528b664affade62d1f887beac63cc9c54e519ce5d4d6376a57"
    end
  end

  on_linux do
    url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Linux-x86_64.tar.gz"
    sha256 "2df1a56a3e38bc5924c7ea5fdf87e22e401ca4e71d637a6eb1987d93fba1abb1"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
