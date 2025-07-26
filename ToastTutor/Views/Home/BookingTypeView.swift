//
//  BookingTypeView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct BookingTypeView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Booking Type")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color.brownishYellowText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 15)
                .padding(.horizontal, 5)
            
            LazyVGrid(columns: columns) {
                ForEach(BookingType.allCases, id: \.self) { bookingType in
                    BookingTypeButton(
                        icon: bookingType.icon,
                        title: bookingType.rawValue
                    ) {
                        navigationModel.navigateToBooking(bookingType)
                    }
                }
            }
            .padding(.bottom, 15)
        }
        .frame(width: 320, alignment: .center)
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(15)
        .padding(.top, 8)
    }
}

#Preview {
    BookingTypeView()
        .environmentObject(NavigationModel())
        .padding()
        .background(Color.backgroundColor)
}
