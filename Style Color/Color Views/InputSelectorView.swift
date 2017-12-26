//
//  InputSelectorView.swift
//  Style Color
//
//  Created by justin on 12/26/17.
//  Copyright © 2017 Oklasoft LLC. All rights reserved.
//

import UIKit

class InputSelectorView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 9.0
        layer.borderWidth = 1.0
        layer.borderColor = #colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)
        layer.masksToBounds = true
        
        let divider: UIView = UIView(frame: CGRect(x: (bounds.size.width / 2),
                                                   y: 0,
                                                   width: 1,
                                                   height: bounds.size.height))
        divider.backgroundColor = .black
        addSubview(divider)
    }
 
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1)
    }

}
