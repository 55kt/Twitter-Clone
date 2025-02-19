//
//  TweetCellView.swift
//  Twitter-Clone
//
//  Created by Vlad on 17/2/25.
//

import SwiftUI

struct TweetCellView: View {
    // MARK: - Properties
    var tweet: String
    var tweetImage: String?
    
    // MARK: - Body
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10) {
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Kush")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        Text("@kush_mush")
                            .foregroundStyle(.gray)
                    }// HStack
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .frame(maxHeight: proxy.size.height)
                        }// GeometryReader
                        .frame(height: 180)

                    }// if
                }// VStack
            }// HStack
            
            // MARK: - Bottom tweet bar buttons
            BottomBarButtons()
            
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    TweetCellView(tweet: sampleText)
}

// MARK: - Text placeholders variables
var sampleText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

var sampleText2 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas faucibus mi facilisis maximus lobortis. Curabitur efficitur augue sed sem egestas, a tincidunt lorem tempus. Phasellus consectetur leo diam, eu luctus erat sodales vel."

var sampleText3 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas faucibus mi facilisis maximus lobortis. Curabitur efficitur augue sed sem egestas, a tincidunt lorem tempus. Phasellus consectetur leo diam, eu luctus erat sodales vel. In vulputate vitae enim et efficitur. Mauris aliquam, libero mollis viverra scelerisque, ipsum odio luctus nibh, eu accumsan erat est eget risus."
