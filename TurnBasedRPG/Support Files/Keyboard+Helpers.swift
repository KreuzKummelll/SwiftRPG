//
//  Keyboard+Helpers.swift
//  TurnBasedRPG
//
//  Created by Andrew on 07.02.20.
//  Copyright © 2020 Chris Phillips. All rights reserved.
//

import UIKit


// Put this piece of code anywhere you like
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
}
