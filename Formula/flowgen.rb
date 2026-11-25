# Rendered by each flowgen release from Formula/flowgen.rb.tmpl; change the template, not flowgen.rb.
class Flowgen < Formula
  desc "Composable data activation platform"
  homepage "https://connve.com/docs/flowgen"
  version "0.160.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-arm64-#{version}.tar.gz"
      sha256 "23ba7d6440ba471b3faf24fe46f7052e8597bb9007850759b0e3848d4c004d4f"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-amd64-#{version}.tar.gz"
      sha256 "31be84d7f2b2325ece1a61a469e597c6799906281fc187fa04a1e03591038d24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-arm64-#{version}.tar.gz"
      sha256 "c7466bd12c75835665fba23d5529b2fe836b0b3351c20776a7f0845f255e9fe3"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-amd64-#{version}.tar.gz"
      sha256 "2a14ddd829df5e622c74b35b951c76ea600489765926059dd586bcac05896f6d"
    end
  end

  def install
    bin.install "flowgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flowgen --version")
  end
end
