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
                                .frame(width: UIScreen.main.bounds.width, height: minY > 0 ? 0 : 180 + minY, alignment: .center)
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
    
}// View

// MARK: - Preview
#Preview {
    UserProfile()
}
