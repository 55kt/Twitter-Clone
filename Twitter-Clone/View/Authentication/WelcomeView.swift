//
//  WelcomeView.swift
//  Twitter-Clone
//
//  Created by Vlad on 24/2/25.
//

import SwiftUI

struct WelcomeView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            // MARK: - Title Section
            Section {
                HStack {
                    Spacer(minLength: 0)
                    
                    Image("Twitter")
                        .resizable()
                        .scaledToFill()
                        .padding(.trailing)
                        .frame(width: 20, height: 20)
                    
                    Spacer(minLength: 0)

                }// HStack
                
                Spacer(minLength: 0)
                
                Text("See whats happenning in the world right now.")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .frame(width: getRect().width * 0.9, alignment: .center)
                
                Spacer(minLength: 0)
            }// Title Section
            
            
            VStack(alignment: .center, spacing: 10) {
                
                // MARK: - Sign in Buttons
                Section {
                    Button {
                        print("Sign in with google !")
                    } label: {
                        HStack(spacing: -4) {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Continue with Google")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundStyle(.black)
                                .padding()
                        }// HStack
                        .overlay {
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        }// overlay
                    }// Sign in with google Button
                    
                    Button {
                        print("Sign in with apple !")
                    } label: {
                        HStack(spacing: -4) {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Continue with Apple")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundStyle(.black)
                                .padding()
                        }// HStack
                        .overlay {
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        }// overlay
                    }// Sign in with apple Button
                }// Sign in Buttons section
                
                // MARK: - Custom divider lines
                HStack {
                    Rectangle()
                        .foregroundStyle(.gray)
                        .opacity(0.3)
                        .frame(width: (getRect().width * 0.35), height: 1 )
                    
                    Text("Or")
                        .foregroundStyle(.gray)
                    
                    Rectangle()
                        .foregroundStyle(.gray)
                        .opacity(0.3)
                        .frame(width: (getRect().width * 0.35), height: 1 )
                    
                }// HStack
                
                // MARK: - Create account button
                RoundedRectangle(cornerRadius: 36)
                    .foregroundStyle(.accent)
                    .frame(width: 320, height: 60, alignment: .center)
                    .overlay {
                        Text("Create account")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundStyle(.white)
                            .padding()
                    }// overlay
            }// VStack
            .padding()
            
            // MARK: - Terms of service & policy section
            Section {
                VStack(alignment: .leading) {
                    VStack {
                        Text("By signing up, you agree to our ")
                        +
                        Text("Terms of Service")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                        +
                        Text(" , ")
                        +
                        Text("Privacy Policy").fontWeight(.bold)
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                        +
                        Text(" and ")
                        +
                        Text("Cookie Use")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    }// VStack
                    .padding(.bottom)
                    
                    HStack(spacing: 2) {
                        Text("Already have an account? ")
                        Text("Log in")
                            .foregroundStyle(.accent)
                    }// HStack
                }// VStack
                .padding()
            }// Terms of service & policy section
            
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    WelcomeView()
}
