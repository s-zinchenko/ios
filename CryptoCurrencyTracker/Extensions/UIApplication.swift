//
//  UIApplication.swift
//  CryptoCurrencyTracker
//
// patel on 2021-08-05.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
