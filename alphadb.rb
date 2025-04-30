class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0-beta.36/alphadb-cli_v1.0.0-beta.36_Darwin-x86_64.tar.gz"
  sha256 "a77d799141106a6a25c1af1b1e0c13635fdf9f00aab156851d8f20ae8d46daa7"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
