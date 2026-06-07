class JiraNightly < Formula
  desc "Automated Jira AI workflow nightly runner"
  homepage "https://github.com/abdusselm/homebrew-jira-autopilot"
  version "1.0.0"
  license "Proprietary"
  on_macos do
    on_arm do
      url "https://github.com/abdusselm/homebrew-jira-autopilot/releases/download/v1.0.0/jira-nightly-darwin-arm64"
      sha256 "2493f5c420d37f42a8c1f7ca8b3c17dc2366a9a13c4853b79833948f621613b5"
    end
    on_intel do
      url "https://github.com/abdusselm/homebrew-jira-autopilot/releases/download/v1.0.0/jira-nightly-darwin-amd64"
      sha256 "207b8c502b456e0ebde8c09a00d2b021ed524471cd569bc4de3d6fcfa91f0ca9"
    end
  end
  on_linux do
    url "https://github.com/abdusselm/homebrew-jira-autopilot/releases/download/v1.0.0/jira-nightly-linux-amd64"
    sha256 "10bc7ef2fd76cc8cdd6b9c40eefc59567e1b86af02f229769bd5accf9c082933"
  end
  def install
    bin.install Dir["jira-nightly-*"].first => "jira-nightly"
  end
  test do
    system bin/"jira-nightly", "help"
  end
end
