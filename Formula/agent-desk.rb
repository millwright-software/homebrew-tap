class AgentDesk < Formula
  desc "Terminal session manager for AI coding agents"
  homepage "https://github.com/millwright-software/agent-desk"
  version "1.0.29"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/millwright-software/agent-desk/releases/download/v1.0.29/agent-desk_1.0.29_darwin_arm64.tar.gz"
      sha256 "a9e2c2a09552c46a0995cdd6decf68e7c457ad51939449f74d3c0e33dbfab36e"
    end
    on_intel do
      url "https://github.com/millwright-software/agent-desk/releases/download/v1.0.29/agent-desk_1.0.29_darwin_amd64.tar.gz"
      sha256 "55b35ee3b06f4a3dc50184ec927c3ed728d7b8582b563eb26410589d28e0935d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/millwright-software/agent-desk/releases/download/v1.0.29/agent-desk_1.0.29_linux_arm64.tar.gz"
      sha256 "b75765866e975e94d4a2571011f49000099b0872ccd949427bf6848954c4d1d6"
    end
    on_intel do
      url "https://github.com/millwright-software/agent-desk/releases/download/v1.0.29/agent-desk_1.0.29_linux_amd64.tar.gz"
      sha256 "f9e543c23a2887250ddc3ef389423063041c09fd96c0f3e89a02f7ef1d0c5b24"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
