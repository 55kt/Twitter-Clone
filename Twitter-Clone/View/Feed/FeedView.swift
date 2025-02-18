//
//  FeedView.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct FeedView: View {
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                
                TweetCellView(tweet: sampleText, tweetImage: "post")
                Divider()
                
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sampleText2)
                    Divider()
                }// ForEach
            }// VStack
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }// ScrollView
    }// Body
}// View

// MARK: - Preview
#Preview {
    FeedView()
}
