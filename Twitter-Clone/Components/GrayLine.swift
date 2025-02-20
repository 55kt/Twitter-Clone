//
//  GrayLine.swift
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

