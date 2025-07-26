import SwiftUI

extension Color {
    static let brownishYellow = Color(red: 0.71, green: 0.33, blue: 0.04) // #b45309
    static let brownishYellowText = Color(red: 140/255, green: 74/255, blue: 24/255) // #b45309
    static let backgroundColor = Color.yellow.opacity(0.2)
}


struct ContentView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let icons = ["inset.filled.rectangle.and.person.filled", "sos.circle.fill", "book.pages.fill", "accessibility.fill"]
    let items = ["Lecture", "Urgent", "Review", "Special"]
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .ignoresSafeArea()
            VStack {
                // The logo and notif bell
                HStack {
                    Image("textlogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 190, height: 53)

                    Spacer()
                    
                    Image(systemName: "bell.badge.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .foregroundColor(Color(red: 1.0, green: 0.73, blue: 0.454))
                        .padding(.leading)
                    
                }.padding(.horizontal).padding(.bottom, 8)
                
                // The User Info
                HStack (spacing: 25) {
                    Image("profileIcon")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(.greatestFiniteMagnitude)

                    VStack (alignment: .leading) {
                        Text("HanNguu")
                            .font(.system(size: 24, weight: .bold, design: .default))
                            .foregroundColor(Color.brownishYellowText)
                        HStack{
                            Image(systemName: "envelope")
                            Text(verbatim: "Bruh@bruh.com")
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .medium, design: .default))
                        }
                        HStack {
                            Button(action: {
                                print("Hello")
                            }) {
                                Text("Edit Profile")
                                    .frame(width: 100, height: 30)
                                    .background(Color.brownishYellowText.opacity(0.2))
                                    .cornerRadius(5)
                                    .foregroundColor(Color.brownishYellowText)
                                    .font(.system(size: 14, weight: .medium, design: .default))
                            }

                        }

                        
                    }}.frame(width: 340, height: 120, alignment: .leading,  ).padding(.leading).background(.white).cornerRadius(15)
                
                VStack(spacing: 10) {
                    // Add the title text
                    Text("Booking Type")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.brownishYellowText)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 15)
                        .padding(.horizontal, 5)
                    
                    // Your existing menu grid
                    LazyVGrid(columns: columns) {
                        ForEach(0..<4) { index in
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 1.0, green: 0.73, blue: 0.454)).opacity(0.9)
                                    .frame(width: 73, height: 73)
                                VStack{
                                    Image(systemName: icons[index])
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                    Text(items[index])
                                        .font(.system(size: 13, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                }
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
                            
                            Text("July 2025")
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
                                    // Date selection action
                                }) {
                                    ZStack {
                                        if day == 15 { // Selected date example
                                            Circle()
                                                .fill(Color(red: 1.0, green: 0.73, blue: 0.454))
                                                .frame(width: 32, height: 32)
                                        }
                                        
                                        Text("\(day)")
                                            .font(.system(size: 14, weight: day == 15 ? .bold : .regular))
                                            .foregroundColor(day == 15 ? .white : .black)
                                    }
                                    .frame(width: 32, height: 32)
                                }
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
                
                    
                Spacer()
                HStack (alignment: .center){
                    NavView(icon: "person.crop.circle", title: "Profile")
                    Spacer()
                    NavView(icon: "graduationcap.fill", title: "Tutors")
                    Spacer()
                    NavView(icon: "calendar", title: "Calendar")
                    Spacer()
                    NavView(icon: "tray.fill", title: "Chat")
                   
                }.padding(.horizontal).frame(maxWidth: .infinity, alignment: .center).ignoresSafeArea(edges: .bottom).padding().padding(.bottom, 5).background(Color(red: 1.0, green: 0.73, blue: 0.454))
            }
        }.ignoresSafeArea(edges: .bottom)
        
    }
}

#Preview {
    ContentView()
}

struct NavView: View {
    var icon: String
    var title: String
    
    var body: some View {
        VStack{
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
                .foregroundColor(Color.brownishYellowText.opacity(0.6))
            Text(title)
                .foregroundColor(Color.brownishYellowText.opacity(0.7))
        }
    }
}
