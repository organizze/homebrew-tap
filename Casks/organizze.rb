cask "organizze" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"

  on_arm do
    sha256 "b289b37945269311eefb1b84bf0a021c52305894f31530756034b8d9d333594c"
  end
  on_intel do
    sha256 "7021429e6830bd95e232a8511c67066e8145864d7dce109c740b76cc7849c4f8"
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
