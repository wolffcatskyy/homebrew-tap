cask "smcfancontrol" do
  version "2.7.0"
  sha256 "4feef95081bc8b469ff6e1609cb48f5d1df4342ab542edeb2d6328b88f644d82"

  url "https://github.com/wolffcatskyy/smcFanControl/releases/download/v#{version}-ce/smcFanControl_CE_#{version}.zip"
  name "smcFanControl Community Edition"
  desc "Fan control for Intel Macs — boot-time control, modern UI, minimal footprint"
  homepage "https://wolffcatskyy.dev/smcfancontrol"

  depends_on arch: :x86_64

  app "smcFanControl.app"

  zap trash: [
    "~/Library/Application Support/smcFanControl",
    "~/Library/Preferences/com.eidac.smcFanControl2.plist",
    "~/Library/LaunchAgents/com.eidac.smcFanControl.plist",
  ]
end
