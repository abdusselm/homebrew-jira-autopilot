class JiraMcp < Formula
  desc "Jira MCP server for Claude Code"
  homepage "https://github.com/abdusselm/homebrew-jira-autopilot"
  version "1.0.0"
  license "Proprietary"
  on_macos do
    on_arm do
      url "https://github.com/abdusselm/homebrew-jira-autopilot/releases/download/v1.0.0/jira-mcp-darwin-arm64"
      sha256 "7e20be349ca73f2426dea6fb9aa8104e82e3daf1ae398403640f3fb9f05b7e70"
    end
    on_intel do
      url "https://github.com/abdusselm/homebrew-jira-autopilot/releases/download/v1.0.0/jira-mcp-darwin-amd64"
      sha256 "6d0e6bf795c047b4828f04a9bddf41d2fa63f773d54f4c777650ed394c61ba8c"
    end
  end
  on_linux do
    url "https://github.com/abdusselm/homebrew-jira-autopilot/releases/download/v1.0.0/jira-mcp-linux-amd64"
    sha256 "b85e813b684a9eb1bab1e06956f26973a709ea045e5ba4c670bf7f37c838d6d5"
  end
  def install
    bin.install Dir["jira-mcp-*"].first => "jira-mcp"
  end
  test do
    system bin/"jira-mcp", "--help"
  end
end
