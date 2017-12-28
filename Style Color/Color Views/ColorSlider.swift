//
//  ColorSlider.swift
//  Style Color
//
//  Created by justin on 12/27/17.
//  Copyright © 2017 Oklasoft LLC. All rights reserved.
//

import UIKit

class ColorSlider: UIView {

    @IBInspectable fileprivate var style: Int = 0
    @IBInspectable var value: Float = 0
    fileprivate var slider: UISlider?
    
    override func draw(_ rect: CGRect) {
        guard let type: sliderType = sliderType(rawValue: style) else {
            return
        }
        var color: CGColor
        switch type {
        case .red:
            color = UIColor.red.cgColor
            break
        case .green:
            color = UIColor.green.cgColor
            break
        case .blue:
            color = UIColor.blue.cgColor
            break
        case .alpha:
            color = UIColor.clear.cgColor
        }
        let gradent: CAGradientLayer = CAGradientLayer()
        gradent.frame = bounds
        gradent.colors = [UIColor.black.cgColor, color, UIColor.white.cgColor]
        gradent.locations = [0.0, 0.75, 1.0]
        gradent.startPoint = CGPoint(x: 0, y: 0)
        gradent.endPoint = CGPoint(x: 1, y: 0)
        layer.insertSublayer(gradent, at: 0)
        
        slider?.setValue(value, animated: false)
    }
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(createSlider())
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
        slider.maximumValue = 0
        slider.maximumValue = 255
        slider.setValue(value, animated: false)
        self.slider = slider
        return slider
    }

}

enum sliderType: Int {
    typealias RawValue = Int
    case red, green, blue, alpha
}
