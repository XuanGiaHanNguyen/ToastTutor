//
//  CalendarDetailView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct CalendarDetailView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Calendar")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("View your scheduled sessions")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Add your calendar content here
                
                Spacer()
            }
            .navigationTitle("Calendar")
        }
    }
}

#Preview {
    CalendarDetailView()
        .environmentObject(NavigationModel())
}
