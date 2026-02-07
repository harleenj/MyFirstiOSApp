import Foundation

struct ScheduledTask: Identifiable {
    let id: UUID
    var title: String
    var dueTime: Date
    var notes: String
    var isCompleted: Bool

    init(id: UUID = UUID(), title: String, dueTime: Date, notes: String = "", isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.dueTime = dueTime
        self.notes = notes
        self.isCompleted = isCompleted
    }
}
