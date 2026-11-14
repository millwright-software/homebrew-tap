cask "quill" do
  version "0.4.0"
  sha256 "9b6153fe87c835f7a748fd7632cb5f8e21f4a356cd2c669e8e8a8aa111fd57db"

  url "https://github.com/millwright-software/quill/releases/download/v#{version}/Quill.zip"
  name "Quill"
  desc "Hold-to-talk dictation and meeting recorder, on-device"
  homepage "https://millwrightsoftware.com/quill/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Quill.app"

  uninstall quit: "com.millwright.quill"

  zap trash: [
    "~/Library/Application Support/FluidAudio",
    "~/Library/Application Support/Quill",
    "~/Library/Logs/Quill.log",
    "~/Library/Preferences/com.millwright.quill.plist",
  ]
end
