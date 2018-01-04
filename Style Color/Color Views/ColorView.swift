//
//  ColorView.swift
//  Style Color
//
//  Created by justin on 12/24/17.
//  Copyright © 2017 Oklasoft LLC. All rights reserved.
//

import UIKit

class ColorView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
     */
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 25.0
        layer.borderWidth = 8.0
        layer.masksToBounds = true
        layer.borderColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
    }
    
    func setColor(color: UIColor) {
        backgroundColor = color
    }

}
