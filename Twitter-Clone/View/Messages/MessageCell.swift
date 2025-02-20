//
//  MessageCell.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct MessageCell: View {
    // MARK: - Properties
    @State private var width = UIScreen.main.bounds.width
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: nil) {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundStyle(.gray)
                .opacity(0.3)
            
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text("Kush")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        Text("@kush_mush")
                            .foregroundStyle(.gray)
                        
                        Spacer(minLength: 0)
                        
                        Text("6/11/24")
                            .foregroundStyle(.gray)
                            .padding(.trailing)
                    }// HStack
                    
                    Text("You: How are you ? I am fine, what about you ? And i wanna know, where you been lately ?")
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                }// VStack
            }// HStack
            .padding(.top, 2)
        }// VStack
        .frame(width: width, height: 84)
    }// Body
}// View

// MARK: - Preview
#Preview {
    MessageCell()
}
