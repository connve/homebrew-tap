# Rendered by each flowgen release from Formula/flowgen.rb.tmpl; change the template, not flowgen.rb.
class Flowgen < Formula
  desc "Composable data activation platform"
  homepage "https://connve.com/docs/flowgen"
  version "0.158.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-arm64-#{version}.tar.gz"
      sha256 "97d893184e7b0118b9dd179c07b232b76791530874942f1d0600b5bcf68c15ec"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-amd64-#{version}.tar.gz"
      sha256 "8125d7a7e7068711fd55bf3b68f7aae006094ce620b70219c9633d62da24daf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-arm64-#{version}.tar.gz"
      sha256 "a7f77dd2fb5e96478582de58ba2b3d463607411ebbe9a6d2cbf120aea8c20ea7"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-amd64-#{version}.tar.gz"
      sha256 "4eac2b5fa29a0a75432b4526a85d358f5e344f53d9403a54b91966bcaebcdc34"
    end
  end

  def install
    bin.install "flowgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flowgen --version")
  end
end
