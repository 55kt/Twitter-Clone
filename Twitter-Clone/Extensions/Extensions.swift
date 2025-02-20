//
//  Extensions.swift
//  Twitter-Clone
//
//  Created by Vlad on 19/2/25.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
