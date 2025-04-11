class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0-beta.34/alphadb-cli_v1.0.0-beta.34_Darwin-x86_64.tar.gz"
  sha256 "64188f8aaf1d91dfa0527946596da9345685346ecad2b35585c93dcb71a3cf7e"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
