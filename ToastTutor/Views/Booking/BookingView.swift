//
//  BookingView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct LectureBookingView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    
    var body: some View {
        VStack {
            Text("Lecture Booking")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Book your lecture session here")
                .font(.body)
                .foregroundColor(.secondary)
            
            Spacer()
            
            Button("Book Now") {
                // Handle booking logic
            }
            .padding()
            .background(Color.orangeAccent)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Spacer()
        }
        .navigationTitle("Lecture")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Done") {
                    navigationModel.navigateBack()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        LectureBookingView()
            .environmentObject(NavigationModel())
    }
}
