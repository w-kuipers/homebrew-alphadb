class Alphadb < Formula
  desc "SQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  version "1.0.0-beta.41"

  on_macos do
    on_arm do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-aarch64.tar.gz"
      sha256 "48769b860aedb1f7bb51b22ccee70744615d5309339121ac27dd83f3ee54591f"
    end
    on_intel do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-x86_64.tar.gz"
      sha256 "9a4fa10d1aa2bd462314a9902b64a3fc53953ce07d726bc34d03c538282b8e28"
    end
  end

  on_linux do
    url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Linux-x86_64.tar.gz"
    sha256 "bf9fef1910f1b3ef57f3e158f5189eea81f5f7c8ab9067f8309c16b911e4bbfd"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
