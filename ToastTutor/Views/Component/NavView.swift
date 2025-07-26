//
//  NavView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct NavView: View {
    let tab: TabSelection
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: tab.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
                .foregroundColor(isSelected ? Color.brownishYellowText : Color.brownishYellowText.opacity(0.6))
            
            Text(tab.rawValue)
                .foregroundColor(isSelected ? Color.brownishYellowText : Color.brownishYellowText.opacity(0.7))
                .font(.system(size: 12, weight: isSelected ? .medium : .regular))
        }
    }
}

#Preview {
    HStack(spacing: 30) {
        NavView(tab: .profile, isSelected: true)
        NavView(tab: .tutors, isSelected: false)
        NavView(tab: .calendar, isSelected: false)
        NavView(tab: .chat, isSelected: false)
    }
    .padding()
    .background(Color.orangeAccent)
}
