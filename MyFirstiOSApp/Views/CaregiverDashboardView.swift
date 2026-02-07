import SwiftUI

struct CaregiverDashboardView: View {
    @State private var selectedActivity: Activity = Activity.samples.first ?? Activity(name: "Feeding", icon: "fork.knife")
    @State private var checkInTime: Date = Date()
    @State private var notes: String = ""
    @State private var checkIns: [CheckIn] = [
        CheckIn(activity: Activity.samples[0], timestamp: Date().addingTimeInterval(-3600), notes: "6 oz formula"),
        CheckIn(activity: Activity.samples[2], timestamp: Date().addingTimeInterval(-7200), notes: "40 min nap")
    ]
    @State private var messages: [Message] = [
        Message(sender: "Parent", recipient: "Caregiver", body: "Please send a quick update after lunch."),
        Message(sender: "Caregiver", recipient: "Parent", body: "Will do! Baby seems happy.")
    ]

    var body: some View {
        NavigationStack {
            List {
                Section("Quick Check-In") {
                    Picker("Activity", selection: $selectedActivity) {
                        ForEach(Activity.samples) { activity in
                            Label(activity.name, systemImage: activity.icon)
                                .tag(activity)
                        }
                    }
                    DatePicker("Time", selection: $checkInTime, displayedComponents: [.date, .hourAndMinute])
                    TextField("Notes", text: $notes, axis: .vertical)
                        .lineLimit(2...4)

                    Button {
                        let newCheckIn = CheckIn(activity: selectedActivity, timestamp: checkInTime, notes: notes)
                        checkIns.insert(newCheckIn, at: 0)
                        notes = ""
                    } label: {
                        Label("Log Activity", systemImage: "checkmark.circle.fill")
                    }
                }

                Section("Recent Check-Ins") {
                    ForEach(checkIns) { checkIn in
                        CheckInRowView(checkIn: checkIn)
                    }
                }

                Section("Messages") {
                    ForEach(messages) { message in
                        MessageRowView(message: message)
                    }
                }
            }
            .navigationTitle("Caregiver Dashboard")
        }
    }
}

#Preview {
    CaregiverDashboardView()
}
