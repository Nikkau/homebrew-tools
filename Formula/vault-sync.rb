class VaultSync < Formula
  desc "CLI tool to sync dynamic configuration from files to Hashicorp Vault"
  homepage "https://github.com/cloudwatt/vault-sync"
  url "https://github.com/cloudwatt/vault-sync/releases/download/v0.1.1/vault-sync_darwin_amd64"
  sha256 "5168f77607206b4ca329873e2a4eac234a9aaab0c740fbd2d0156f1012c00f05"

  def install
    mv "vault-sync_darwin_amd64", "vault-sync"
    bin.install "vault-sync"
  end

  test do
    system "#{bin}/vault-sync", "--version"
  end
end
