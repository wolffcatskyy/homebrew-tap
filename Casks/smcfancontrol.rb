cask "smcfancontrol" do
  version "2.7.0"
  sha256 "4feef95081bc8b469ff6e1609cb48f5d1df4342ab542edeb2d6328b88f644d82"

  # Existing legacy application package; Cooling CE is not included.
  # v2.7.0 is a separate source-only release. Keep the -ce artifact tag.
  url "https://github.com/wolffcatskyy/smcFanControl/releases/download/v#{version}-ce/smcFanControl_CE_#{version}.zip"
  name "smcFanControl Community Edition"
  desc "Legacy minimum fan-speed control for Intel Macs"
  homepage "https://github.com/wolffcatskyy/smcFanControl"

  depends_on arch: :x86_64

  app "smcFanControl.app"

  zap trash: [
    "~/Library/Application Support/smcFanControl",
    "~/Library/Preferences/com.eidac.smcFanControl2.plist",
    "~/Library/LaunchAgents/com.eidac.smcFanControl.plist",
  ]
end
