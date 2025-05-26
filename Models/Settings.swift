import Foundation
import SwiftData

@Model
final class Settings {
    var notificationEnabled: Bool
    var theme: String
    var darkMode: Bool

    init(
        notificationEnabled: Bool = true,
        theme: String = "default",
        darkMode: Bool = false
    ) {
        self.notificationEnabled = notificationEnabled
        self.theme = theme
        self.darkMode = darkMode
    }
}

