//
//  MenuButton.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct MenuButton: View {
    // MARK: - Properties
    var title: String
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 15) {
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .foregroundStyle(.gray)
            
            Text(title)
                .foregroundStyle(.black)
            
            Spacer(minLength: 0)
        }// HStack
        .padding(.vertical, 12)
    }// Body
}// View

// MARK: - Preview
#Preview {
    MenuButton(title: "person")
}
