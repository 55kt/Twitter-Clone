//
//  SearchUserCell.swift
//  Twitter-Clone
//
//  Created by Vlad on 19/2/25.
//

import SwiftUI

struct SearchUserCell: View {
    
    // MARK: - Body
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Kush")
                    .fontWeight(.heavy)
                Text("@kush_mush")
                    .foregroundStyle(.gray)
            }// VStack
            
            Spacer(minLength: 0)
            
        }// HStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    SearchUserCell()
}
