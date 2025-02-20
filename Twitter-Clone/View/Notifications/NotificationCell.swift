//
//  NotificationCell.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct NotificationCell: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack {
            GrayLine()
            
            HStack(alignment: .top) {
                
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundStyle(.accent)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading, spacing: 5) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                    
                    HStack {
                        Text("Kush")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        Text("followed you !")
                            .foregroundStyle(.primary)
                        
                        Spacer()

                    }// HStack
                }// VStack
            }// HStack
            .padding(.leading, 30)

        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    NotificationCell()
}
