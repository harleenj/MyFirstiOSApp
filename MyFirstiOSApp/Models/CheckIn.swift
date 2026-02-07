import Foundation

struct CheckIn: Identifiable {
    let id: UUID
    var activity: Activity
    var timestamp: Date
    var notes: String

    init(id: UUID = UUID(), activity: Activity, timestamp: Date = Date(), notes: String = "") {
        self.id = id
        self.activity = activity
        self.timestamp = timestamp
        self.notes = notes
    }
}
