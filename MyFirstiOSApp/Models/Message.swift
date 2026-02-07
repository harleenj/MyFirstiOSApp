import Foundation

struct Message: Identifiable {
    let id: UUID
    var sender: String
    var recipient: String
    var body: String
    var timestamp: Date

    init(id: UUID = UUID(), sender: String, recipient: String, body: String, timestamp: Date = Date()) {
        self.id = id
        self.sender = sender
        self.recipient = recipient
        self.body = body
        self.timestamp = timestamp
    }
}
