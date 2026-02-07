import SwiftUI

struct ParentDashboardView: View {
    @State private var tasks: [ScheduledTask] = [
        ScheduledTask(title: "Morning bottle", dueTime: Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: Date()) ?? Date(), notes: "6 oz"),
        ScheduledTask(title: "Outdoor play", dueTime: Calendar.current.date(bySettingHour: 10, minute: 30, second: 0, of: Date()) ?? Date(), notes: "Bring hat"),
        ScheduledTask(title: "Afternoon nap", dueTime: Calendar.current.date(bySettingHour: 13, minute: 0, second: 0, of: Date()) ?? Date())
    ]
    @State private var messages: [Message] = [
        Message(sender: "Parent", recipient: "Caregiver", body: "Please log diaper changes today."),
        Message(sender: "Caregiver", recipient: "Parent", body: "Will do! Any snack preferences?")
    ]

    var body: some View {
        NavigationStack {
            List {
                Section("Daily Timed Tasks") {
                    ForEach(tasks) { task in
                        TaskRowView(task: task)
                    }
                }

                Section("Messages") {
                    ForEach(messages) { message in
                        MessageRowView(message: message)
                    }
                }
            }
            .navigationTitle("Parent Dashboard")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        tasks.append(
                            ScheduledTask(
                                title: "New task",
                                dueTime: Calendar.current.date(byAdding: .hour, value: 1, to: Date()) ?? Date(),
                                notes: ""
                            )
                        )
                    } label: {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("Add task")
                }
            }
        }
    }
}

#Preview {
    ParentDashboardView()
}
