# Rendered by each flowgen release from Formula/flowgen.rb.tmpl; change the template, not flowgen.rb.
class Flowgen < Formula
  desc "Composable data activation platform"
  homepage "https://connve.com/docs/flowgen"
  version "0.157.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-arm64-#{version}.tar.gz"
      sha256 "2a6a21808317ae2a190828cb77bfec1b14291ad2c46ccdbf003c5fa06fa9a050"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-amd64-#{version}.tar.gz"
      sha256 "ecdd36284ec557686027e1e73140645a00c423c9aa8ce18b9412c38d60ad30fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-arm64-#{version}.tar.gz"
      sha256 "adb38e44d4134ced1620c707dd6523b9c5d9675b55f9b127fa4c5d5a0938720d"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-amd64-#{version}.tar.gz"
      sha256 "76f17d795087132fed059ec1969d017ea2ee2f319cb68f4c763c1ed16605afd8"
    end
  end

  def install
    bin.install "flowgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flowgen --version")
  end
end
