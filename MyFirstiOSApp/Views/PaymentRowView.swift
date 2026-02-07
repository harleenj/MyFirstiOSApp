import SwiftUI

struct PaymentRowView: View {
    var schedule: PaymentSchedule

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text(schedule.caregiverName)
                    .font(.headline)
                Spacer()
                Text(schedule.isPaid ? "Paid" : "Pending")
                    .font(.caption.bold())
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(schedule.isPaid ? Color.green.opacity(0.2) : Color.orange.opacity(0.2))
                    .clipShape(Capsule())
            }
            Text("\(schedule.periodStart.formatted(date: .abbreviated, time: .omitted)) - \(schedule.periodEnd.formatted(date: .abbreviated, time: .omitted))")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Text("$\(schedule.amount, specifier: "%.2f")")
                .font(.title3.bold())
        }
    }
}

#Preview {
    PaymentRowView(
        schedule: PaymentSchedule(
            caregiverName: "Sam",
            periodStart: Date().addingTimeInterval(-1209600),
            periodEnd: Date(),
            amount: 500,
            isPaid: false
        )
    )
}
