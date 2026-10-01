# Building ZeniVoice

Requires macOS 15+, full Xcode (not just Command Line Tools), Git, and CMake.

```sh
brew install cmake
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer xcodebuild -runFirstLaunch
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer xcodebuild -downloadComponent MetalToolchain
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer make local LOCAL_CODESIGN_IDENTITY=-
open ~/Downloads/ZeniVoice.app
```

`make local` builds the Whisper framework, builds ZeniVoice in `.local-build`, and copies the app to `~/Downloads/ZeniVoice.app`. The `LOCAL_BUILD` flag is also enabled by default for Debug and Release in the Xcode project. This is the upstream-supported free local mode, with no license activation or trial expiry.

The Xcode project and scheme are still named `VoiceInk` internally. For manual builds, open `VoiceInk.xcodeproj`. Use `LocalBuild.xcconfig` for ad-hoc signing without an Apple Developer certificate. CMake is needed when preparing Whisper.

If Xcode is installed elsewhere, adjust `DEVELOPER_DIR`. Local builds do not include iCloud dictionary sync or automatic app updates. Ad-hoc signing may require permissions again after rebuilding. Optional cloud transcription and AI enhancement require your own provider API keys and may incur provider charges.
