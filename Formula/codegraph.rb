class Codegraph < Formula
  desc "Scans a codebase and generates dependency/call graphs as JSON or an interactive HTML report"
  homepage "https://github.com/LachlanS9/codegraph"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-macos-arm64"
      sha256 "19aaf9e11b5401144d217d38f8623f36a3a3ad5e63980784f4278cda31e5d258"
    else
      odie "codegraph does not currently ship an Intel Mac (x86_64) binary."
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-linux-arm64"
      sha256 "e1e2c918151909b534ef57fa54af6822c563468c4cdbe5c15f5dc849ffdf9c95"
    else
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-linux-x64"
      sha256 "38ead9cdf1528bd0dc4267b73bcd9c704e3e72135b51dbcebc9fbb2595db80e4"
    end
  end

  def install
    bin.install Dir["codegraph-*"].first => "codegraph"
    chmod 0755, bin/"codegraph"
  end

  test do
    system "#{bin}/codegraph", "--help"
  end
end
