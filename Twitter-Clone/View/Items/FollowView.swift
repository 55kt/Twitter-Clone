//
//  FollowView.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct FollowView: View {
    // MARK: - Properties
    var count: Int
    var title: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundStyle(.black)
            
            Text(title)
                .foregroundStyle(.gray)
        }// HStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    FollowView(count: 2341, title: "Followers")
}
