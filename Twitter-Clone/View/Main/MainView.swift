//
//  MainView.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    @State private var width = UIScreen.main.bounds.width - 90
    @State private var x = -UIScreen.main.bounds.width + 90
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            VStack {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    VStack {
                        TopBar(x: $x)
                        Home()
                    }// VStack
                    SlideMenu()
                        .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                        .offset(x: x)
                        .background(Color.black.opacity(x == 0 ? 0.5 : 0))
                        .ignoresSafeArea(.all, edges: .vertical)
                        .onTapGesture {
                            withAnimation {
                                x = -width
                            }// withAnimation
                        }// onTapGesture
                }// ZStack
                
                // MARK: - Drag animation block
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            if value.translation.width > 0 {
                                x = max(-width + value.translation.width, -width)
                            } else {
                                x = min(value.translation.width, 0)
                            }// if - else
                        }// onChanged
                        .onEnded { value in
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.7, blendDuration: 0.5)) {
                                if -x < width / 2 {
                                    x = 0
                                } else {
                                    x = -width
                                }// if - else
                            }// withAnimation
                        }// onEnded
                )// gesture
                
            }// VStack
        }// NavigationStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    MainView()
}
