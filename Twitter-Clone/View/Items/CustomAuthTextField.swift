//
//  CustomAuthTextField.swift
//  Twitter-Clone
//
//  Created by Vlad on 24/2/25.
//

import SwiftUI

struct CustomAuthTextField: View {
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
                    TextField("", text: $text)
                }// if - else
                
                TextField("", text: $text)
                    .frame(height: 45)
                    .foregroundStyle(.accent)
            }// ZStack
            
            GrayLine2()
            
        }// VStack
        .padding(.horizontal)

    }// Body
}// View

// MARK: - Preview
#Preview {
    @Previewable @State var text: String = ""
    CustomAuthTextField(placeholder: "placeholder", text: $text)
}
