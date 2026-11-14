cask "agent-desk" do
  version "1.0.29"

  on_arm do
    url "https://github.com/millwright-software/agent-desk/releases/download/v#{version}/agent-desk_#{version}_darwin_arm64.tar.gz"
    sha256 "a9e2c2a09552c46a0995cdd6decf68e7c457ad51939449f74d3c0e33dbfab36e"
  end
  on_intel do
    url "https://github.com/millwright-software/agent-desk/releases/download/v#{version}/agent-desk_#{version}_darwin_amd64.tar.gz"
    sha256 "55b35ee3b06f4a3dc50184ec927c3ed728d7b8582b563eb26410589d28e0935d"
  end

  name "Agent Desk"
  desc "Terminal session manager for AI coding agents"
  homepage "https://github.com/millwright-software/agent-desk"

  depends_on formula: "tmux"

  binary "agent-desk"

  postflight do
    # The release binary isn't notarized; clear the download quarantine so macOS will run it.
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/agent-desk"]
  end
end
