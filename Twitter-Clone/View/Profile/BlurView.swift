//
//  BlurView.swift
//  Twitter-Clone
//
//  Created by Vlad on 21/2/25.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterialDark))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
    
}
