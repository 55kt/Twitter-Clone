//
//  SearchCell.swift
//  Twitter-Clone
//
//  Created by Vlad on 18/2/25.
//

import SwiftUI

struct SearchCell: View {
    // MARK: - Properties
    var tag = ""
    var tweets = ""
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Text1")
                .fontWeight(.heavy)
            
            Text(tweets + "Tweets")
                .fontWeight(.light)
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    SearchCell()
}
