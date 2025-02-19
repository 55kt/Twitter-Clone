//
//  SearchBar.swift
//  Twitter-Clone
//
//  Created by Vlad on 18/2/25.
//

import SwiftUI

struct SearchBar: View {
    // MARK: - Properties
    @Binding var text: String
    @Binding var isEditing: Bool
    
    // MARK: - Body
    var body: some View {
        HStack {
            TextField("Search Twitter", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }// HStack
                }// overlay
        }// HStack
        .onTapGesture {
            isEditing = false
        }// onTapGesture
    }// Body
}// View

// MARK: - Preview
#Preview {
    SearchBar(text: .constant(""), isEditing: .constant(false))
}
