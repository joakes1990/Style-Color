//
//  ColorSlider.swift
//  Style Color
//
//  Created by justin on 12/27/17.
//  Copyright © 2017 Oklasoft LLC. All rights reserved.
//

import UIKit

class ColorSlider: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let gradent: CAGradientLayer = CAGradientLayer()
        gradent.frame = bounds
        gradent.colors = [UIColor.white.cgColor, UIColor.red.cgColor, UIColor.black.cgColor]
        gradent.locations = [0.0, 0.75, 1.0]
        gradent.startPoint = CGPoint(x: 0, y: 0)
        gradent.endPoint = CGPoint(x: 1, y: 0)
        layer.insertSublayer(gradent, at: 0)
    }
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        let slider: UISlider = createSlider()
        addSubview(slider)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let slider: UISlider = createSlider()
        addSubview(slider)
    }
    
    fileprivate func createSlider() -> UISlider {
        let slider: UISlider = UISlider(frame: bounds)
        slider.maximumTrackTintColor = UIColor.clear
        slider.minimumTrackTintColor = UIColor.clear
        slider.setThumbImage(#imageLiteral(resourceName: "sliderSelector"), for: .normal)
        return slider
    }

}

enum sliderType {
    case red, green, blue, alpha
}
