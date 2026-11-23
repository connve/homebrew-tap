# Rendered by each flowgen release from Formula/flowgen.rb.tmpl; change the template, not flowgen.rb.
class Flowgen < Formula
  desc "Composable data activation platform"
  homepage "https://connve.com/docs/flowgen"
  version "0.159.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-arm64-#{version}.tar.gz"
      sha256 "40d4c0be421d3c9cef3a209228a2ce74ff61790cd887a01828a098e05d2a66c0"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-amd64-#{version}.tar.gz"
      sha256 "aa43e28b39b8f993c26300d548c46d94163a5af91eb772dc3610e0fb0106b8a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-arm64-#{version}.tar.gz"
      sha256 "79e8c15fb90bb1c79862bf1c0604082672b91894ffa5018b1674dd25dd15003a"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-amd64-#{version}.tar.gz"
      sha256 "1ad721896f14cdba35f1636ed6d26f0bcd2cc543771d990d7070600918219d5e"
    end
  end

  def install
    bin.install "flowgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flowgen --version")
  end
end
