class Alphadb < Formula
  desc "SQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  version "1.0.0-beta.39"
  url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-x86_64.tar.gz"
  sha256 "d909d393e245ce5d33474abdaf886ababe7394489e0f7a81d0646be13cf8bdb5"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
