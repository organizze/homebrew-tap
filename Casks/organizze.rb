cask "organizze" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"

  on_arm do
    sha256 "eba06b9a86da5d903d030a7c852374fdcc8314ba06192b58005ab24ae2306515"
  end
  on_intel do
    sha256 "dcbefa77a16e6f52adfe4113f5b9d96a352c85fe6a0812f280588df17ad9947f"
  end

  url "https://github.com/organizze/agent-tools/releases/download/cli-v#{version}/organizze-darwin-#{arch}"
  name "Organizze CLI"
  desc "Command-line interface for the Organizze REST API v2"
  homepage "https://developers.organizze.com.br"

  binary "organizze-darwin-#{arch}", target: "organizze"

  caveats <<~EOS
    Run `organizze login` to authenticate, then `organizze status` to verify.
  EOS
end
