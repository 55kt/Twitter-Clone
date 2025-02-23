//
//  TabButton.swift
//  Twitter-Clone
//
//  Created by Vlad on 23/2/25.
//

import SwiftUI

struct TabButton: View {
    // MARK: - Properties
    var title: String
    @Binding var currentTab: String
    var animation: Namespace.ID
    
    // MARK: - Body
    var body: some View {
        Button {
            // action
        } label: {
            LazyVStack(spacing: 12) {
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundStyle(currentTab == title ? .accent : .gray)
                    .padding(.horizontal)
                
                if currentTab == title {
                    Capsule()
                        .fill(Color.accent)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                }
                else {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }// if - else
            }// LazyVStack
        }// Button
    }// Body
}// View

// MARK: - Preview
#Preview {
    @Previewable @Namespace var animation
    TabButton(title: "ButtonTitle", currentTab: .constant(""), animation: animation)
}
