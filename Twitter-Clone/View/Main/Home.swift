//
//  Home.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct Home: View {
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
                    
                    Tab("Profile", systemImage: "person") {
                        ProfileView()
                    }// Profile
                    
                }// TabView
            }// ZStack
        }// VStack
    }// Body
}// View

#Preview {
    Home()
}
