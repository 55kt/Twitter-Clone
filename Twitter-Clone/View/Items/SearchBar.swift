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
            TextField("Search Twitter", text: $text, onEditingChanged: { isEditing in
                withAnimation(.easeInOut(duration: 0.3)) {
                    self.isEditing = isEditing
                }// withAnimation
            })// TextField
            .padding(8)
            .padding(.horizontal, 24)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                }// HStack
            }// overlay
            
            if isEditing {
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isEditing = false
                        text = ""
                    }
                    UIApplication.shared.endEditing()
                } label: {
                    Text("Cancel")
                        .foregroundStyle(.accent)
                        .padding(.trailing, 8)
                        .transition(.move(edge: .trailing))
                        .transition(.move(edge: .trailing).combined(with: .opacity))
                }
            }// Cancel Button ( if block )
        }// HStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    SearchBar(text: .constant(""), isEditing: .constant(false))
}
