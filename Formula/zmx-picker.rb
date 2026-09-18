class ZmxPicker < Formula
  desc "Fuzzy finder for zmx sessions and repositories"
  homepage "https://github.com/EarthmanMuons/zmx-picker"
  url "https://github.com/EarthmanMuons/zmx-picker/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "b21ac7b94a1a805576d2432af53409cf7ffaaf55ba80213827a2d085bf92a808"
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
