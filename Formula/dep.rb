class Dep < Formula
  desc "Go dependency tool"
  homepage "https://github.com/golang/dep"
  head "https://github.com/golang/dep.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GOOS"] = "darwin"
    ln_sf "#{buildpath}/vendor", "#{buildpath}/src"
    system "go", "build", "-o", "dep"
    bin.install "dep"
  end

  test do
    system "false"
  end
end
