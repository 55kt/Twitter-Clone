//
//  TweetButtonView.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct TweetButtonView: View {
    // MARK: - Properties
    var action: () -> Void
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                
                Button {
                    action()
                } label: {
                    Image("tweet")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding()
                        .background(Color("bg"))
                        .foregroundStyle(.white)
                        .clipShape(.circle)
                }// Button
            }// HStack
            .padding()
        }// VStack
        .padding(.bottom, 65)
    }// Body
}// View

// MARK: - Preview
#Preview {
    TweetButtonView() {}
}
