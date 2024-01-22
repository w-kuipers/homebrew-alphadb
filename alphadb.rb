class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  if Hardware::CPU.arm?
    url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0b14/alphadb-cli_v1.0.0b14_Darwin_x86_64.tar.gz"
    sha256 "a1a020939c00d76d4f958a19d4d8e10078dfb0b1205b04089d652902f4c76524"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script libexec/"alphadb"
    end
  end

  test do
    system "alphadb", "--version"
  end
end
