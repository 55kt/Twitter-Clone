//
//  Home.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct Home: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    
                    Tab("Feed", systemImage: "house") {
                        FeedView()
                    }// Feed
                    
                    Tab("Search", systemImage: "magnifyingglass") {
                        SearchView()
                    }// Search
                    
                    Tab("Notifications", systemImage: "bell") {
                        NotificationsView()
                    }// Notifications
                    
                    Tab("Messages", systemImage: "envelope") {
                        MessagesView()
                    }// Messages
                    
                }// TabView
                
                // MARK: - Twitt Button
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            // action
                        } label: {
                            Image("tweet")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color("bg"))
                                .foregroundStyle(.white)
                                .clipShape(.circle)
                        }// Button
                    }// HStack
                    .padding()
                }// VStack
                .padding(.bottom, 65)
                
            }// ZStack
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    Home()
}
