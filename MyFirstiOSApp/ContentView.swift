import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ParentDashboardView()
                .tabItem {
                    Label("Parent", systemImage: "person.fill")
                }

            CaregiverDashboardView()
                .tabItem {
                    Label("Caregiver", systemImage: "person.2.fill")
                }

            PaymentsView()
                .tabItem {
                    Label("Payments", systemImage: "calendar.badge.clock")
                }
        }
    }
}

#Preview {
    ContentView()
}
