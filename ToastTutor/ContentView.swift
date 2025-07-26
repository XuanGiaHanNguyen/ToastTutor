import SwiftUI

struct ContentView: View {
    @StateObject private var navigationModel = NavigationModel()
    
    var body: some View {
        NavigationStack(path: $navigationModel.navigationPath) {
            TabView(selection: $navigationModel.selectedTab) {
                HomeView()
                    .environmentObject(navigationModel)
                    .tabItem {
                        Image(systemName: TabSelection.profile.icon)
                        Text(TabSelection.profile.rawValue)
                    }
                    .tag(TabSelection.profile)
                
                TutorsView()
                    .environmentObject(navigationModel)
                    .tabItem {
                        Image(systemName: TabSelection.tutors.icon)
                        Text(TabSelection.tutors.rawValue)
                    }
                    .tag(TabSelection.tutors)
                
                CalendarDetailView()
                    .environmentObject(navigationModel)
                    .tabItem {
                        Image(systemName: TabSelection.calendar.icon)
                        Text(TabSelection.calendar.rawValue)
                    }
                    .tag(TabSelection.calendar)
                
                ChatView()
                    .environmentObject(navigationModel)
                    .tabItem {
                        Image(systemName: TabSelection.chat.icon)
                        Text(TabSelection.chat.rawValue)
                    }
                    .tag(TabSelection.chat)
            }
            .navigationDestination(for: BookingType.self) { bookingType in
                bookingDestination(for: bookingType)
            }
        }
        .environmentObject(navigationModel)
    }
    
    @ViewBuilder
    private func bookingDestination(for type: BookingType) -> some View {
        switch type {
        case .lecture:
            LectureBookingView()
        case .urgent:
            LectureBookingView()
        case .review:
            LectureBookingView()
        case .special:
            LectureBookingView()
        }
    }
}

#Preview {
    ContentView()
}
