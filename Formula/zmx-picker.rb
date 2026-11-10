class ZmxPicker < Formula
  desc "Fuzzy finder for zmx sessions and repositories"
  homepage "https://github.com/EarthmanMuons/zmx-picker"
  url "https://github.com/EarthmanMuons/zmx-picker/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "8ab7cc05d78f645a69d0f6e86f1cff8fa871d886213cb908a149d0dd41980e96"
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
