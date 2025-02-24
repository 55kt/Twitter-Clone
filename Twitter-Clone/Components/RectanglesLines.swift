//
//  RectanglesLines.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct GrayLine: View {
    @State private var width = UIScreen.main.bounds.width
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: 1)
            .foregroundStyle(.gray)
            .opacity(0.3)
    }
}

struct GrayLine2: View {
    var body: some View {
        Rectangle()
            .frame(height: 1, alignment: .center)
            .foregroundStyle(.gray)
            .padding(.top, -2)
    }
}

