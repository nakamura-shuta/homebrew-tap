class Cfl < Formula
  desc "Copy file contents for LLM"
  homepage "https://github.com/nakamura-shuta/cfl"
  url "https://github.com/nakamura-shuta/cfl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "56d798cac80dff30cb3b3dddde7efc051e22fed9792d67d4ef35f1f3793c6950"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/cfl", "--version"
  end
end
