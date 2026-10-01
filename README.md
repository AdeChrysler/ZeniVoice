# ZeniVoice

Personal-use macOS dictation app forked from [VoiceInk by Pax](https://github.com/Beingpax/VoiceInk). ZeniVoice uses the upstream free local-build mode in Debug and Release: no paid app license, activation key, subscription, or trial expiry.

Use downloaded local models for free offline transcription, or supply your own API keys for cloud transcription and enhancement. Cloud providers may charge for API usage; ZeniVoice does not provide or charge for those services.

## Build and run

Requires macOS 15+, full Xcode, Git, and CMake (`brew install cmake`).

```sh
git clone https://github.com/AdeChrysler/ZeniVoice.git
cd ZeniVoice
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer xcodebuild -runFirstLaunch
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer xcodebuild -downloadComponent MetalToolchain
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer make local LOCAL_CODESIGN_IDENTITY=-
open ~/Downloads/ZeniVoice.app
```

Grant Microphone and Accessibility permissions during onboarding. Screen Recording is optional for screen context. Add your API keys in the app's provider settings, or download and select a local transcription model.

The internal Xcode project and scheme retain the upstream `VoiceInk` name to simplify merging upstream changes. The installed app is **ZeniVoice**, with its own bundle identifier, Keychain service, preferences, and application data. Existing VoiceInk data and API keys are not imported automatically.

Automatic upstream app updates, remote promotional announcements, and iCloud dictionary sync are disabled. To update, merge upstream source and rebuild. Ad-hoc signing requires no paid Apple Developer membership, but macOS permissions may need to be granted again after a rebuild.

## License and attribution

Based on VoiceInk, created by Pax and its contributors. Original source notices and history are preserved. ZeniVoice modifications dated October 1, 2026 rename the app, separate its identity and storage, enable local-build mode by default, replace purchase UI with a personal-build About page, and disable upstream update and announcement services.

Licensed under [GNU GPL v3](LICENSE). If distributing a modified binary, provide its corresponding source and retain the license and notices. Models and dependencies retain their respective licenses; see [upstream credits](UPSTREAM_README.md#acknowledgments). The optional VoiceInk Refine model retains its upstream name and download location.
