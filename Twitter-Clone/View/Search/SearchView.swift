//
//  SearchView.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct SearchView: View {
    // MARK: - Properties
    @State private var text: String = ""
    @State private var isEditing: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            List(0..<9) { i in
                
                SearchCell(tag: "Hello", tweets: String(i))
                
            }// List
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    SearchView()
}
