//
//  TutorsView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct TutorsView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Tutors")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Find and connect with tutors")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Add your tutors content here
                
                Spacer()
            }
            .navigationTitle("Tutors")
        }
    }
}

#Preview {
    TutorsView()
        .environmentObject(NavigationModel())
}
