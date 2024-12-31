class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0-beta.28/alphadb-cli_v1.0.0-beta.28_Darwin-x86_64.tar.gz"
  sha256 "bbc186c3e74f95e627114d043928273bd0f421f549f89c19faf4185558818fa9"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
