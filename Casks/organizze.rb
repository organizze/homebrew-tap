cask "organizze" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"

  on_arm do
    sha256 "9c3c96b8f9c7a78db1666f2996cf093dff966b80f53cfe41899ab46678b924a0"
  end
  on_intel do
    sha256 "9241adfcf81fbd8b321792366ed5fd9c1171b71478b8a3a7fa32e39282df438d"
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
