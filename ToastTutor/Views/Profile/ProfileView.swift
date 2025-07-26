//
//  ProfileView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile View")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Add profile content here
                
                Spacer()
            }
            .navigationTitle("Profile")
        }
    }
}
