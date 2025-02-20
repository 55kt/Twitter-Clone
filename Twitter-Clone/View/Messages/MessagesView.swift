//
//  MessagesView.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct MessagesView: View {
    
    // MARK: - Body
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<9) { _ in
                    MessageCell()
                }// ForEach
            }// ScrollView
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    MessagesView()
}
