//
//  BottomBarButtons.swift
//  Twitter-Clone
//
//  Created by Vlad on 18/2/25.
//

import SwiftUI

struct BottomBarButtons: View {
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 50){
            Button {
                // action
            } label: {
                Image("Comments")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.gray)
            }
            
            Button {
                // action
            } label: {
                Image("Retweet")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.gray)
            }
            
            Button {
                // action
            } label: {
                Image("love")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.gray)
            }
            
            Button {
                // action
            } label: {
                Image("upload")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.gray)
            }
        }// HStack
        .padding(.top, 5)
    }// Body
}// View

// MARK: - Preview
#Preview {
    BottomBarButtons()
}
