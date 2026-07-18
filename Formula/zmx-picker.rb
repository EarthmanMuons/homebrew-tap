class ZmxPicker < Formula
  desc "Fuzzy finder for zmx sessions and repositories"
  homepage "https://github.com/EarthmanMuons/zmx-picker"
  url "https://github.com/EarthmanMuons/zmx-picker/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "7d05cb8369a3170ffef0d8f1f445f1381a8378a82a131c89e405a744b92359c9"
  license "0BSD"

  depends_on "fzf"
  depends_on "neurosnap/tap/zmx"

  def install
    bin.install "zp"
  end

  def caveats
    <<~EOS
      Repos are listed from roots given as arguments or $ZP_ROOT.
      Installing fd (brew install fd) speeds up repository scans.
    EOS
  end

  test do
    assert_match "zp #{version}", shell_output("#{bin}/zp --version")
  end
end
