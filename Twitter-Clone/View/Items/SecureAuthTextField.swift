//
//  SecureAuthTextField.swift
//  Twitter-Clone
//
//  Created by Vlad on 24/2/25.
//

import SwiftUI

struct SecureAuthTextField: View {
    // MARK: - Properties
    var placeholder: String
    @Binding var text: String
    
    // MARK: - Body
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundStyle(.gray)
                }
                else {
                    SecureField("", text: $text)
                        .frame(height: 45)
                        .foregroundStyle(.accent)
                }// if - else
            }// ZStack
            
            GrayLine2()
            
        }// VStack
        .padding(.horizontal)

    }// Body
}// View

// MARK: - Preview
#Preview {
    @Previewable @State var text: String = ""
    SecureAuthTextField(placeholder: "Placeholder", text: $text)
}
