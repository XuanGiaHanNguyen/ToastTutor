//
//  ChatView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Chat")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Message your tutors")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Add your chat content here
                
                Spacer()
            }
            .navigationTitle("Chat")
        }
    }
}

#Preview {
    ChatView()
        .environmentObject(NavigationModel())
}
