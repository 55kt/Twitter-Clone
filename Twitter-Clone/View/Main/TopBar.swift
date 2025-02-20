//
//  TopBar.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct TopBar: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack {
            HStack {
                Button {
                    // action
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 24))
                        .foregroundStyle(.accent)
                }
                
                Spacer(minLength: 0)
                
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                
                Spacer(minLength: 0)
            }// HStack
            .padding()
            
            GrayLine()
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    TopBar()
}
