//
//  Home.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct Home: View {
    // MARK: - Properties
    @State private var showCreateTweetSheet: Bool = false
    
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
                
                // MARK: - Tweet Button
                TweetButtonView {
                    self.showCreateTweetSheet.toggle()
                }
                
            }// ZStack
            .sheet(isPresented: $showCreateTweetSheet) {
                CreateTweetView()
            }
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    Home()
}
