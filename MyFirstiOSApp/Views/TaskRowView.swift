import SwiftUI

struct TaskRowView: View {
    var task: ScheduledTask

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundStyle(task.isCompleted ? Color.green : Color.gray)

            VStack(alignment: .leading, spacing: 4) {
                Text(task.title)
                    .font(.headline)
                Text(task.notes.isEmpty ? "No notes" : task.notes)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Text(task.dueTime, style: .time)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    TaskRowView(task: ScheduledTask(title: "Sample", dueTime: Date(), notes: "Notes"))
}
