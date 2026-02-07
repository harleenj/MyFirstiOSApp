import SwiftUI

struct PaymentsView: View {
    @State private var schedules: [PaymentSchedule] = {
        let calendar = Calendar.current
        let now = Date()
        let start = calendar.date(byAdding: .day, value: -7, to: now) ?? now
        let end = calendar.date(byAdding: .day, value: 7, to: now) ?? now
        return [
            PaymentSchedule(caregiverName: "Alex", periodStart: start, periodEnd: end, amount: 450, isPaid: false),
            PaymentSchedule(caregiverName: "Alex", periodStart: calendar.date(byAdding: .day, value: -21, to: now) ?? now, periodEnd: calendar.date(byAdding: .day, value: -7, to: now) ?? now, amount: 480, isPaid: true)
        ]
    }()

    var body: some View {
        NavigationStack {
            List {
                Section("Biweekly Payments") {
                    ForEach(schedules) { schedule in
                        PaymentRowView(schedule: schedule)
                    }
                }
            }
            .navigationTitle("Payments")
        }
    }
}

#Preview {
    PaymentsView()
}
