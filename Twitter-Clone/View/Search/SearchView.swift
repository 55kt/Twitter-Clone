//
//  SearchView.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct SearchView: View {
    // MARK: - Properties
    @State var text = ""
    @State var isEditing = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if !isEditing {
                List(0..<9) { i in
                    
                    SearchCell(tag: "Hello", tweets: String(i))
                    
                }// List
            }
            else {
                List(0..<9) { _ in
                    SearchUserCell()
                }
            }// if - else
        }// VStack
        .onTapGesture {
            isEditing = false
            UIApplication.shared.endEditing()
        }// onTapGesture
    }// Body
}// View

// MARK: - Preview
#Preview {
    SearchView()
}
