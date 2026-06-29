class Alphadb < Formula
  desc "SQL Database Version Management"
  homepage "https://alphadb.w-kuipers.com/"
  license "GPL-3.0-or-later"

  version "1.0.0-beta.50"

  on_macos do
    on_arm do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-aarch64.tar.gz"
      sha256 "24f8fae76f148b07713288923527a1b61f5912dd999a7dce4bcc2532e460a6d7"
    end
    on_intel do
      url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Darwin-x86_64.tar.gz"
      sha256 "f932bcd77a854b2a7b6d99f0a879583a347f1c3b6f01e2e8943b064947420252"
    end
  end

  on_linux do
    url "https://github.com/w-kuipers/alphadb/releases/download/v#{version}/alphadb-cli_v#{version}_Linux-x86_64.tar.gz"
    sha256 "012ac0f4daa5ff746e2ffe0bed4f16f362ffcf88a3a73e6b603041e1d510877c"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"alphadb"
  end

  test do
    system "alphadb", "--version"
  end
end
