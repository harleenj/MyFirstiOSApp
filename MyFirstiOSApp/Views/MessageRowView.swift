import SwiftUI

struct MessageRowView: View {
    var message: Message

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text(message.sender)
                    .font(.subheadline.bold())
                Image(systemName: "arrow.right")
                    .font(.caption)
                Text(message.recipient)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Spacer()
                Text(message.timestamp, style: .time)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            Text(message.body)
                .font(.body)
        }
    }
}

#Preview {
    MessageRowView(message: Message(sender: "Parent", recipient: "Caregiver", body: "Reminder about nap time."))
}
