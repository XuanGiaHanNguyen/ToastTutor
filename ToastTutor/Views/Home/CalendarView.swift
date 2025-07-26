//
//  CalendarView.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/26/25.
//

// Views/Home/CalendarView.swift
import SwiftUI

struct CalendarView: View {
    @State private var selectedDate = 15
    @State private var currentMonth = "July 2025"
    
    var body: some View {
        VStack(spacing: 10) {
            VStack(spacing: 8) {
                // Month/Year header
                HStack {
                    Button(action: {
                        // Previous month action
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Text(currentMonth)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.black.opacity(0.8))
                    
                    Spacer()
                    
                    Button(action: {
                        // Next month action
                    }) {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                .padding(.horizontal, 20)
                
                // Days of week header
                HStack {
                    ForEach(["S", "M", "T", "W", "T", "F", "S"], id: \.self) { day in
                        Text(day)
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal, 20)
                
                // Calendar grid
                let calendarColumns = Array(repeating: GridItem(.flexible()), count: 7)
                
                LazyVGrid(columns: calendarColumns, spacing: 5) {
                    // Previous month's trailing days (grayed out)
                    ForEach([29, 30], id: \.self) { day in
                        Text("\(day)")
                            .font(.system(size: 14))
                            .foregroundColor(.gray.opacity(0.4))
                            .frame(width: 32, height: 32)
                    }
                    
                    // Current month days
                    ForEach(1...31, id: \.self) { day in
                        Button(action: {
                            selectedDate = day
                        }) {
                            ZStack {
                                if day == selectedDate {
                                    Circle()
                                        .fill(Color(red: 1.0, green: 0.73, blue: 0.454))
                                        .frame(width: 32, height: 32)
                                }
                                
                                Text("\(day)")
                                    .font(.system(size: 14, weight: day == selectedDate ? .bold : .regular))
                                    .foregroundColor(day == selectedDate ? .white : .black)
                            }
                            .frame(width: 32, height: 32)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    
                    // Next month's leading days (grayed out)
                    ForEach([1, 2, 3], id: \.self) { day in
                        Text("\(day)")
                            .font(.system(size: 14))
                            .foregroundColor(.gray.opacity(0.4))
                            .frame(width: 32, height: 32)
                    }
                }
                .padding(.horizontal, 15)
            }
            .padding(.vertical, 15)
        }
        .frame(width: 320, alignment: .center)
        .padding(.vertical, 5)
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(15)
        .padding(.top, 8)
    }
}

#Preview {
    CalendarView()
        .padding()
        .background(Color.yellow.opacity(0.2))
}
