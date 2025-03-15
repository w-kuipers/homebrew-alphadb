class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0-beta.30/alphadb-cli_v1.0.0-beta.30_Darwin-x86_64.tar.gz"
  sha256 "bbfccca994d0729890dfb92450a99d7d0746ff9e219c385087094662b33b8e01"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
