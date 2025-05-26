import Foundation
import SwiftData

@Model
final class Achievement {
    @Attribute(.unique) var id: UUID
    var name: String
    var icon: String // アイコン名やファイル名
    var note: String
    var achievedAt: Date?

    init(
        id: UUID = UUID(),
        name: String,
        icon: String,
        note: String,
        achievedAt: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.icon = icon
        self.note = note
        self.achievedAt = achievedAt
    }
}

