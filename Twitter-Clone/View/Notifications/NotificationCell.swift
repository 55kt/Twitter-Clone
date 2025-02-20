//
//  NotificationCell.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct NotificationCell: View {
    // MARK: - Properties
    @State private var width = UIScreen.main.bounds.width
    
    // MARK: - Body
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundStyle(.gray)
                .opacity(0.3)
            
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
