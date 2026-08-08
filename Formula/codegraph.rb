class Codegraph < Formula
  desc "Scans a codebase and generates dependency/call graphs as JSON or an interactive HTML report"
  homepage "https://github.com/LachlanS9/codegraph"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-macos-arm64"
      sha256 "PLACEHOLDER_MACOS_ARM64_SHA256"
    else
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-macos-x64"
      sha256 "PLACEHOLDER_MACOS_X64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-linux-arm64"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    else
      url "https://github.com/LachlanS9/codegraph/releases/download/v#{version}/codegraph-linux-x64"
      sha256 "PLACEHOLDER_LINUX_X64_SHA256"
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
