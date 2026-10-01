import AppIntents
import AppKit
import Foundation

struct DismissMiniRecorderIntent: AppIntent {
    static var title: LocalizedStringResource = "Dismiss ZeniVoice Recorder"
    static var description = IntentDescription("Dismiss the ZeniVoice recorder and cancel any active recording.")

    static var openAppWhenRun: Bool = false

    @MainActor
    func perform() async throws -> some IntentResult & ProvidesDialog {
        NotificationCenter.default.post(name: .dismissRecorderPanel, object: nil)

        let dialog: IntentDialog = "ZeniVoice recorder dismissed"
        return .result(dialog: dialog)
    }
}
