# Typed: false
# frozen_string_literal: true

# Formula/stackengine.rb
# Generated automatically by scripts/generate-homebrew-formula.sh
# Repository: https://github.com/gweisec/stackengine

class Stackengine < Formula
  desc "Zero-Trust Remediation Engine for Cloud-Native Ops"
  homepage "https://stackengine.dev"
  version "1.0.6"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gweisec/stackengine/releases/download/v#{version}/stackengine_#{version}_darwin_arm64.tar.gz"
      sha256 "31ff3248e06cc03267c0899edc2ac34e926d9efbd104aaeaee68747f2850ed74"
    elsif Hardware::CPU.intel?
      url "https://github.com/gweisec/stackengine/releases/download/v#{version}/stackengine_#{version}_darwin_amd64.tar.gz"
      sha256 "cc0a384fa8b13fc41de9bf263875ddbead511a68579a879752268469c7588022"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gweisec/stackengine/releases/download/v#{version}/stackengine_#{version}_linux_arm64.tar.gz"
      sha256 "a9f8656b6443706f4be50d209fece47af70e972a1c0d7b5af204a9c1c1bb7c29"
    elsif Hardware::CPU.intel?
      url "https://github.com/gweisec/stackengine/releases/download/v#{version}/stackengine_#{version}_linux_amd64.tar.gz"
      sha256 "dd3bf23981bdadb2c48cb3d759c94b403878ddda04f75d971ab5a5eb746c2ff9"
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
