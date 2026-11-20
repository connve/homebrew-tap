# Rendered by each flowgen release from Formula/flowgen.rb.tmpl; change the template, not flowgen.rb.
class Flowgen < Formula
  desc "Composable data activation platform"
  homepage "https://connve.com/docs/flowgen"
  version "0.158.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-arm64-#{version}.tar.gz"
      sha256 "94478546f57887d6a543042ed32aadd74b42a113c3226eb1fbf1aca5ad277a3c"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-amd64-#{version}.tar.gz"
      sha256 "50f155c42f4506f049a78b59d41c0e3b094d70b71667090e476f9646570b16f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-arm64-#{version}.tar.gz"
      sha256 "2b2851bb0dfd0696e1dfdd27a4a1cf338a58c7625e07d91156828d7dbdf26729"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-amd64-#{version}.tar.gz"
      sha256 "09ddd3b6825bbe5e64701a75a29fab278ed1b872ce087a2e0b77e7f17919159f"
    end
  end

  def install
    bin.install "flowgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flowgen --version")
  end
end
