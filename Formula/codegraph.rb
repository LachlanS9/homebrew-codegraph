class Codegraph < Formula
  desc "Scans a codebase and generates dependency/call graphs as JSON or an interactive HTML report"
  homepage "https://github.com/LachlanS9/codegraph"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-macos-arm64"
      sha256 "61dca77eda4c80570f016b7aefae16dad145880e5daf3a207ebc421047344677"
    else
      odie "codegraph does not currently ship an Intel Mac (x86_64) binary."
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-linux-arm64"
      sha256 "ebfec837afbe356b4fa07461d7f6c7fbb42d5a28005a4c577524d7da4fb8116a"
    else
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-linux-x64"
      sha256 "8c6e760f784622a1b1e0c20958bf6a5679dc2bc0d27cfb4dedb11dc3c3236a87"
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
