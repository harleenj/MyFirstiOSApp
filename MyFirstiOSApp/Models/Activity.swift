import Foundation

struct Activity: Identifiable, Hashable {
    let id: UUID
    var name: String
    var icon: String

    init(id: UUID = UUID(), name: String, icon: String) {
        self.id = id
        self.name = name
        self.icon = icon
    }

    static let samples: [Activity] = [
        Activity(name: "Feeding", icon: "fork.knife"),
        Activity(name: "Diaper", icon: "drop.fill"),
        Activity(name: "Nap", icon: "bed.double.fill"),
        Activity(name: "Play", icon: "balloon.2.fill"),
        Activity(name: "Bath", icon: "bathtub.fill")
    ]
}
