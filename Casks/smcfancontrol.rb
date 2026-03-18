cask "smcfancontrol" do
  version "2.6.2"
  sha256 "f167e0950ddee16c6780b51bc92b06159c89fae8c85a5249dbccded7b36ab9a8"

  url "https://github.com/wolffcatskyy/smcFanControl/releases/download/v#{version}-ce/smcFanControl_CE_#{version}.zip"
  name "smcFanControl Community Edition"
  desc "Fan control for Intel Macs — boot-time control, modern UI, minimal footprint"
  homepage "https://wolffcatskyy.dev/smcfancontrol"

  depends_on macos: ">= :el_capitan"
  depends_on arch: :x86_64

  app "smcFanControl.app"

  postflight do
    suppress_move_to_applications
  end

  zap trash: [
    "~/Library/Application Support/smcFanControl",
    "~/Library/Preferences/com.eidac.smcFanControl2.plist",
    "~/Library/LaunchAgents/com.eidac.smcFanControl.plist",
  ]
end
