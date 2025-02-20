//
//  MainView.swift
//  Twitter-Clone
//
//  Created by Vlad on 20/2/25.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Body
    var body: some View {
        VStack {
            TopBar()
            Home()
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    MainView()
}
