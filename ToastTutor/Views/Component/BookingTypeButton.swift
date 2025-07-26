//
//  BookingTypeButton.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct BookingTypeButton: View {
    let icon: String
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.orangeAccent.opacity(0.9))
                    .frame(width: 73, height: 73)
                
                VStack {
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    
                    Text(title)
                        .font(.system(size: 13, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    VStack(spacing: 20) {
        BookingTypeButton(
            icon: "inset.filled.rectangle.and.person.filled",
            title: "Lecture"
        ) {
            print("Lecture tapped!")
        }
        
        BookingTypeButton(
            icon: "sos.circle.fill",
            title: "Urgent"
        ) {
            print("Urgent tapped!")
        }
    }
    .padding()
    .background(Color.backgroundColor)
}
