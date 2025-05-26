import Foundation
import SwiftData

@Model
final class RepeatRule {
    @Attribute(.unique) var id: UUID
    var type: String // "daily", "weekly", "custom"など
    var interval: Int?
    var daysOfWeek: [Int]? // 0=日曜～6=土曜
    var customRule: String? // JSON等

    init(
        id: UUID = UUID(),
        type: String,
        interval: Int? = nil,
        daysOfWeek: [Int]? = nil,
        customRule: String? = nil
    ) {
        self.id = id
        self.type = type
        self.interval = interval
        self.daysOfWeek = daysOfWeek
        self.customRule = customRule
    }
}
