class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0-beta.30/alphadb-cli_v1.0.0-beta.30_Darwin-x86_64.tar.gz"
  sha256 "d6001b50940d08f44c49121505a4750825ad29086327c6d4912f3c89a75c3f8d"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
