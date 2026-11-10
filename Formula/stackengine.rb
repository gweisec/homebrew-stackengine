# Typed: false
# frozen_string_literal: true

# Formula/stackengine.rb
# Generated automatically by scripts/generate-homebrew-formula.sh
# Repository: https://github.com/gweisec/stackengine

class Stackengine < Formula
  desc "Zero-Trust Remediation Engine for Cloud-Native Ops"
  homepage "https://stackengine.dev"
  version "1.0.7"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gweisec/stackengine/releases/download/v#{version}/stackengine_#{version}_darwin_arm64.tar.gz"
      sha256 "34a40f000471a987ff5d45f36541c60b24ab0ec373c1f35ff3f396b273d55724"
    elsif Hardware::CPU.intel?
      url "https://github.com/gweisec/stackengine/releases/download/v#{version}/stackengine_#{version}_darwin_amd64.tar.gz"
      sha256 "ceb6b928689e2662f79dbfdef4ce9bc8215080cd30d093d90ed04e406228f3e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gweisec/stackengine/releases/download/v#{version}/stackengine_#{version}_linux_arm64.tar.gz"
      sha256 "a262ad5d07c2f5af4179434ab7e1e86b62ee55f49b02285e6d0772d7406992ca"
    elsif Hardware::CPU.intel?
      url "https://github.com/gweisec/stackengine/releases/download/v#{version}/stackengine_#{version}_linux_amd64.tar.gz"
      sha256 "b0cadeb51398c4d7e2f808e018bb28f63b99914c11773ab517a3e12e7d6301fa"
    end
  end

  def install
    bin.install "stackengine"
    bin.install_symlink bin/"stackengine" => "se"
  end

  test do
    assert_match "stackengine", shell_output("#{bin}/stackengine --help")
    assert_match version.to_s, shell_output("#{bin}/stackengine --version")
  end
end
