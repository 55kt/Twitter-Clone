//
//  RegisterView.swift
//  Twitter-Clone
//
//  Created by Vlad on 24/2/25.
//

import SwiftUI

struct RegisterView: View {
    // MARK: - Properties
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            // MARK: - Header
            ZStack {
                HStack {
                    Button {
                        // action
                    } label: {
                        Text("Cancel")
                    }
                    
                    
                    Spacer()
                }// HStack
                .padding(.horizontal)
                
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
            }// ZStack
            
            // MARK: - Form Auth
            Section {
                Text("Create your account")
                    .font(.title)
                    .bold()
                    .padding(.top, 35)
                
                VStack(alignment: .leading, spacing: nil) {
                    CustomAuthTextField(placeholder: "Username", text: $username)
                    CustomAuthTextField(placeholder: "Phone number or email", text: $email)
                    CustomAuthTextField(placeholder: "Password", text: $password)
                    
                }// VStack
            }// Form Auth Section
            
            Spacer(minLength: 0)
            
            // MARK: - Next Button
            Section {
                VStack {
                    GrayLine2()
                        .padding(.horizontal)
                    
                    HStack {
                        
                        Spacer()
                        
                        Button {
                            // action
                        } label: {
                            Capsule()
                                .frame(width: 60, height: 30, alignment: .center)
                                .overlay {
                                    Text("Next")
                                        .foregroundStyle(.white)
                                }
                        }
                    }// HStack
                    .padding(.trailing, 24)
                }// VStack
            }// Next Button Section
            
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    RegisterView()
}
