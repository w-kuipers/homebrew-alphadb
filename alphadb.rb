class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0b15/alphadb-cli_v1.0.0b15_Darwin_x86_64.tar.gz"
  sha256 "18070d30224a81c4a1a9b48935a5c08e59129d43632ddd848da9035c8be2db27"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
