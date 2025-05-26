import Foundation
import SwiftData

@Model
final class Task {
    @Attribute(.unique) var id: UUID
    var title: String
    var detail: String?
    var dueDate: Date?
    var isCompleted: Bool
    var createdAt: Date
    var updatedAt: Date
    var type: String // "normal" or "habit"
    var repeatRuleId: UUID?
    var parentTaskId: UUID?
    var listId: UUID
    
    init(
        id: UUID = UUID(),
        title: String,
        detail: String? = nil,
        dueDate: Date? = nil,
        isCompleted: Bool = false,
        createdAt: Date = Date(),
        updatedAt: Date = Date(),
        type: String,
        repeatRuleId: UUID? = nil,
        parentTaskId: UUID? = nil,
        listId: UUID
    ) {
        self.id = id
        self.title = title
        self.detail = detail
        self.dueDate = dueDate
        self.isCompleted = isCompleted
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.type = type
        self.repeatRuleId = repeatRuleId
        self.parentTaskId = parentTaskId
        self.listId = listId
    }
}
