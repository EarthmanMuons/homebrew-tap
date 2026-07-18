class ZmxPicker < Formula
  desc "Fuzzy finder for zmx sessions and repositories"
  homepage "https://github.com/EarthmanMuons/zmx-picker"
  url "https://github.com/EarthmanMuons/zmx-picker/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "e7c99a6d6105fff0254085dfd07a22db1ac784b7897ff021c6749f91a481f130"
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
