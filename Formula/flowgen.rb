# Rendered by each flowgen release from Formula/flowgen.rb.tmpl; change the template, not flowgen.rb.
class Flowgen < Formula
  desc "Agentic data activation platform with human-in-the-loop"
  homepage "https://connve.com/docs/flowgen"
  version "0.155.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-arm64-#{version}.tar.gz"
      sha256 "b2f47744240819b552d561304527935c5ab93f94a44090ef1262d9f6805d8dc1"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-darwin-amd64-#{version}.tar.gz"
      sha256 "9234c2db547012054ca33819627f362603844984973dbea8c0cd87f1716bb7b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-arm64-#{version}.tar.gz"
      sha256 "6ff045e5a7453d63e5528fb3cccc87c8bf522de7608fa3cc12eda55cc0b32d0f"
    end
    on_intel do
      url "https://github.com/connve/flowgen/releases/download/v#{version}/flowgen-linux-amd64-#{version}.tar.gz"
      sha256 "abdb7d671c63341eaf8230ee406644f26839938093b6eaa273f9f6aa6e1ace46"
    end
  end

  def install
    bin.install "flowgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flowgen --version")
  end
end
