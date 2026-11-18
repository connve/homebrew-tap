# Rendered by each flowgen release from Formula/flowgen.rb.tmpl; change the template, not flowgen.rb.
class Flowgen < Formula
  desc "Agentic data activation platform with human-in-the-loop"
  homepage "https://connve.com/docs/flowgen"
  version "0.156.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-arm64-#{version}.tar.gz"
      sha256 "2246a3f4f2f9959d085d0aca3bc2442cfa7b0d6992aa1ecd0578a67907c98744"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-amd64-#{version}.tar.gz"
      sha256 "b6460a943188b89294d00029f1c5953710a28ef7bf48c28225fbffe5df99628e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-arm64-#{version}.tar.gz"
      sha256 "c716f1c9fa2529c1b66faa6d2fa9d072bf188c1028de356aec92bf1d7c8ae959"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-amd64-#{version}.tar.gz"
      sha256 "36bff14d86f703cdd05ab5678b233f48e52a38b1fbbe67b4ca2decb68cb75096"
    end
  end

  def install
    bin.install "flowgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flowgen --version")
  end
end
