//
//  Storyboarded.swift
//  AdventureText
//
//  Created by Andrew on 04.09.19.
//  Copyright © 2019 Andrew McLane. All rights reserved.
//

import UIKit


protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

