//
//  HealthBar.swift
//  TurnBasedRPG
//
//  Created by Christopher Phillips on 9/1/18.
//  Copyright © 2018 Chris Phillips. All rights reserved.
//

import UIKit

@IBDesignable
class HealthBar: UIView{
    
    var currentHealth:CGFloat = 0.75
    private var _maxHealth: Int = 100
    private var _currentHealth: Int = 100
    
    override func draw(_ rect: CGRect) {
        
        let maxHealth: UIBezierPath = UIBezierPath(rect: self.bounds)
        UIColor.black.setFill()
        UIColor.white.setStroke()
        maxHealth.lineWidth = 2
        maxHealth.fill()
        maxHealth.stroke()
        
        let hp:UIBezierPath = UIBezierPath(rect: CGRect(origin: maxHealth.bounds.origin, size: CGSize(width: self.bounds.width * currentHealth, height: self.bounds.height)))
       
        UIColor.white.setFill()
        hp.fill()
    }
    
    
}
