import Foundation

struct PaymentSchedule: Identifiable {
    let id: UUID
    var caregiverName: String
    var periodStart: Date
    var periodEnd: Date
    var amount: Double
    var isPaid: Bool

    init(id: UUID = UUID(), caregiverName: String, periodStart: Date, periodEnd: Date, amount: Double, isPaid: Bool = false) {
        self.id = id
        self.caregiverName = caregiverName
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.amount = amount
        self.isPaid = isPaid
    }
}
