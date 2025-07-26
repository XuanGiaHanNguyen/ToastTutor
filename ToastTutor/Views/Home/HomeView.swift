//
//  HomeView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .ignoresSafeArea()
            
            VStack {
                // Header
                HStack {
                    Image("textlogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 190, height: 53)

                    Spacer()
                    
                    Button(action: {
                        // Handle notification tap
                    }) {
                        Image(systemName: "bell.badge.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 26, height: 26)
                            .foregroundColor(Color.orangeAccent)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 8)
                
                // User Info Section
                ProfileSection()
                
                // Booking Type Section
                BookingTypeView()
                    .environmentObject(navigationModel)
                
                // Calendar Section
                CalendarView()
                
                Spacer()
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct ProfileSection: View {
    var body: some View {
        HStack(spacing: 25) {
            Image("profileIcon")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(.greatestFiniteMagnitude)

            VStack(alignment: .leading) {
                Text("HanNguu")
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .foregroundColor(Color.brownishYellowText)
                
                HStack {
                    Image(systemName: "envelope")
                    Text(verbatim: "Bruh@bruh.com")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .medium, design: .default))
                }
                
                Button(action: {
                    // Navigate to edit profile
                }) {
                    Text("Edit Profile")
                        .frame(width: 100, height: 30)
                        .background(Color.brownishYellowText.opacity(0.2))
                        .cornerRadius(5)
                        .foregroundColor(Color.brownishYellowText)
                        .font(.system(size: 14, weight: .medium, design: .default))
                }
            }
        }
        .frame(width: 340, height: 120, alignment: .leading)
        .padding(.leading)
        .background(.white)
        .cornerRadius(15)
    }
}

#Preview {
    HomeView()
        .environmentObject(NavigationModel())
}
