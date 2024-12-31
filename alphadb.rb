class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0-beta.27/alphadb-cli_v1.0.0-beta.27_Darwin-x86_64.tar.gz"
  sha256 "17dc1afc2bb10d24cf4ced640deb4f8328e07ea71062eb3ed0ab70e1600b316f"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
