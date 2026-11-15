cask "quill" do
  version "0.4.1"
  sha256 "dda73ec376dcc43c8f010a7741a32deab3dfe85f972c9f30ae464baf63d73a2e"

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
