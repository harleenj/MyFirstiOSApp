import SwiftUI

struct CheckInRowView: View {
    var checkIn: CheckIn

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: checkIn.activity.icon)
                .foregroundStyle(.blue)

            VStack(alignment: .leading, spacing: 4) {
                Text(checkIn.activity.name)
                    .font(.headline)
                if !checkIn.notes.isEmpty {
                    Text(checkIn.notes)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Text(checkIn.timestamp, style: .time)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    CheckInRowView(checkIn: CheckIn(activity: Activity.samples[0], timestamp: Date(), notes: "Sample note"))
}
