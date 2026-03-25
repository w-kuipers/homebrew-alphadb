class Alphadb < Formula
  desc "SQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  version "1.0.0-beta.39"

  on_macos do
    on_arm do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-aarch64.tar.gz"
      sha256 "1d50f34339a42b4b3f9a3085f48177657a39e8e5f6fbc7a1e73acfa04e2c95df"
    end
    on_intel do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-x86_64.tar.gz"
      sha256 "d909d393e245ce5d33474abdaf886ababe7394489e0f7a81d0646be13cf8bdb5"
    end
  end

  on_linux do
    url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Linux-x86_64.tar.gz"
    sha256 "c4f5ef6c03118a1e0a562e55c00ef853c80f236a3e8483ff5e12117ad2233f2f"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
