class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0-beta.38/alphadb-cli_v1.0.0-beta.38_Darwin-x86_64.tar.gz"
  sha256 "14647a10d82096534b9ed844014ef3b70b1eee98bdc913393ec5f63575fe57da"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
