//
//  CreateTweetView.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct CreateTweetView: View {
    // MARK: - Properties
    @State private var text = ""
    
    // MARK: - Body
    var body: some View {
        VStack {
            HStack {
                
                Button {
                    // action
                } label: {
                    Text("Cancel")
                }// cancel button
                
                Spacer()
                
                Button {
                    // action
                } label: {
                    Text("Tweet")
                        .padding()
                        .background(Color("bg"))
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                }// tweet button
                
            }// HStack
            .padding()
            
            MultilineTextField(text: $text)
                .padding()

        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    CreateTweetView()
}
