class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0-beta.35/alphadb-cli_v1.0.0-beta.35_Darwin-x86_64.tar.gz"
  sha256 "a4b48eb099861561665fd7be0531976a8cb6f5abc5dc5a13deaf19640935b8f6"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
