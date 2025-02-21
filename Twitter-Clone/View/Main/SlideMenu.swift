//
//  SlideMenu.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct SlideMenu: View {
    // MARK: - Properties
    @State private var show: Bool = false
    var menuButtons = ["Profile", "Lists", "Topics", "Moments", "Bookmarks", "Moments"]
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var width = UIScreen.main.bounds.width
    
    // MARK: - Body
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    HStack(alignment: .top, spacing: 12) {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Kush")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                            
                            Text("@kush_mush")
                                .foregroundStyle(.gray)
                            
                            HStack(spacing: 20) {
                                FollowView(count: 5, title: "Following")
                                FollowView(count: 8911, title: "Followers")
                            }// HStack
                            .padding(.top, 10)
                            
                            Divider()
                                .padding(.top, 10)
                        }// VStack
                        
                        Spacer(minLength: 0)
                        
                        // MARK: - Hide, Show menu button
                        Button {
                            withAnimation {
                                self.show.toggle()
                            }
                        } label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundStyle(.accent)
                        }// Button
                    }// HStack
                    
                    VStack(alignment: .leading) {
                        
                        // MARK: - Menu buttons
                        ForEach(menuButtons, id:\.self) { item in
                            MenuButton(title: item)
                        }// ForEach
                        
                        Divider()
                            .padding(.top)
                        
                        // MARK: - Ads Button
                        Button {
                            // action
                        } label: {
                            MenuButton(title: "Twitter Ads")
                        }
                        
                        Divider()
                        
                        // MARK: - Privacy Section & Settings
                        Section {
                            Button {
                                // action
                            } label: {
                                Text("Settings and privacy")
                                    .foregroundStyle(.black)
                            }
                            .padding(.top, 20)
                            
                            Button {
                                // action
                            } label: {
                                Text("Help Center")
                                    .foregroundStyle(.black)
                            }
                            .padding(.top, 20)
                        }// Privacy Section & Settings
                        
                        Spacer(minLength: 0)
                        
                        Divider()
                            .padding(.bottom)
                        
                        // MARK: - Help & Barcode buttons
                        HStack {
                            Button {
                                // action
                            } label: {
                                Image("help")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundStyle(.accent)
                            }
                            
                            Spacer(minLength: 0)
                            
                            Button {
                                // action
                            } label: {
                                Image("barcode")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundStyle(.accent)
                            }
                        }// HStack
                        Spacer(minLength: 0)
                    }// VStack
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    .animation(.easeInOut(duration: 0.3), value: show)
                    
                    // MARK: - Create or add account
                    VStack(alignment: .leading) {
                        Button {
                            // action
                        } label: {
                            Text("Create a new account")
                                .foregroundStyle(.accent)
                        }
                        
                        Button {
                            // action
                        } label: {
                            Text("Add an existing account")
                                .foregroundStyle(.accent)
                        }
                        
                        Spacer(minLength: 0)
                        
                    }// VStack
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil : 0)
                    .animation(.easeInOut(duration: 0.3), value: show)
                    
                }// VStack
                .padding(.horizontal,20)
                .padding(.top,edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom,edges!.bottom == 0 ? 15 : edges?.bottom)
                .frame(width: UIScreen.main.bounds.width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
                
            }// HStack
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    SlideMenu()
}
