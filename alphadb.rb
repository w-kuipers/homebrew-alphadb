class Alphadb < Formula
  desc "MySQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  if Hardware::CPU.arm?
    url "https://github.com/w-kuipers/alphadb/releases/download/v1.0.0b11/alphadb-cli_v1.0.0b11_Darwin_arm64.tar.gz"
    sha256 "b75771e07783f82b28073753501c0475866289d811a43860a3315b4d9dbc19fb"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script libexec/"alphadb"
    end
  end

  test do
    system "alphadb", "--version"
  end
end
