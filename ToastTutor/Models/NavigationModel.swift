//
//  NavigationModel.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

enum TabSelection: String, CaseIterable {
    case profile = "Profile"
    case tutors = "Tutors"
    case calendar = "Calendar"
    case chat = "Chat"
    
    var icon: String {
        switch self {
        case .profile: return "person.crop.circle"
        case .tutors: return "graduationcap.fill"
        case .calendar: return "calendar"
        case .chat: return "tray.fill"
        }
    }
}

enum BookingType: String, CaseIterable {
    case lecture = "Lecture"
    case urgent = "Urgent"
    case review = "Review"
    case special = "Special"
    
    var icon: String {
        switch self {
        case .lecture: return "inset.filled.rectangle.and.person.filled"
        case .urgent: return "sos.circle.fill"
        case .review: return "book.pages.fill"
        case .special: return "accessibility.fill"
        }
    }
}

class NavigationModel: ObservableObject {
    @Published var selectedTab: TabSelection = .profile
    @Published var navigationPath = NavigationPath()
    
    func navigateToBooking(_ type: BookingType) {
        navigationPath.append(type)
    }
    
    func navigateBack() {
        navigationPath.removeLast()
    }
    
    func resetNavigation() {
        navigationPath = NavigationPath()
    }
}
