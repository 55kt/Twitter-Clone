//
//  UserProfile.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct UserProfile: View {
    // MARK: - Properties
    @State private var offset: CGFloat = 0
    @State private var titleOffset: CGFloat = 0
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                GeometryReader { proxy -> AnyView in
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        self.offset = minY
                    }// DispatchQueue
                    
                    return AnyView(
                        ZStack {
                            Image("banner")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width, height: minY > 0 ? 180 + minY : 180, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 0))
                            
                            BlurView()
                                .opacity(blueViewOpacity())
                            
                            VStack(spacing: 5) {
                                Text("Kush")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                
                                Text("231 Tweets")
                                    .foregroundStyle(.white)
                            }// VStack
                            .offset(y: 120)
                            .offset(y: titleOffset > 100 ? 0 : -getTitleOffset())
                            .opacity(titleOffset < 100 ? 1 : 0)
                        }// ZStack
                        .clipped()
                        .frame(height: minY > 0 ? 180 + minY : nil)
                        .offset(y: minY > 0 ? -minY : -minY < 80 ? 0 : -minY - 80)
                    )
                }// GeometryReader
                .frame(height: 180)
                .zIndex(1)
                
                VStack {
                    HStack {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                            .padding(8)
                            .background(Color.white)
                            .offset(y: offset < 0 ? getOffset() - 20 : -20)
                            .scaleEffect(getScale())
                        
                        Spacer()
                        
                        Button {
                            // action
                        } label: {
                            Text("Edit Profile")
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Capsule().stroke(Color.accent, lineWidth: 1.5))
                        }
                    }// HStack
                    .padding(.top, -25)
                    .padding(.bottom, -10)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Kush")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        Text("@kush_mush")
                            .foregroundStyle(.gray)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. 🤷🏼‍♂️")
                        
                        HStack(spacing: 5) {
                            Text("13")
                                .foregroundStyle(.primary)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .foregroundStyle(.gray)
                            
                            Text("680")
                                .foregroundStyle(.primary)
                                .fontWeight(.semibold)
                            
                            Text("Following")
                                .foregroundStyle(.gray)
                        }// HStack
                    }// VStack
                }// VStack
            }// VStack
        }// ScrollView
    }// Body
    
    // MARK: - Methods
    func blueViewOpacity() -> Double {
        let progress = -(offset + 80) / 150
        return Double(-offset > 80 ? progress : 0)
    }
    
    func getTitleOffset() -> CGFloat {
        let progress = 20 / titleOffset
        let offset = 60 * (progress > 0 && progress <= 1 ? progress : 1)
        return offset
    }
    
    func getOffset() -> CGFloat {
        let progress = (-offset / 80) * 20
        return progress <= 20 ? progress : 20
    }
    
    func getScale() -> CGFloat {
        let progress = -offset / 80
        let scale = 1.8 - (progress < 1.0 ? progress : 1)
        return scale < 1 ? scale : 1
    }
    
}// View

// MARK: - Preview
#Preview {
    UserProfile()
}
