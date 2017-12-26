//
//  CameraButtonView.swift
//  Style Color
//
//  Created by justin on 12/26/17.
//  Copyright © 2017 Oklasoft LLC. All rights reserved.
//

import UIKit

class CameraButtonView: UIView {

    override func draw(_ rect: CGRect) {
        let path: UIBezierPath = UIBezierPath(roundedRect: bounds,
                                              byRoundingCorners: [.topRight, .bottomRight],
                                              cornerRadii: CGSize(width: 9, height: 9))
        let maskLayer: CAShapeLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = path.cgPath
        layer.mask = maskLayer
        
        layer.borderWidth = 1.0
        layer.borderColor = #colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)
        
        let imageView: UIImageView = UIImageView(frame: CGRect(x: (bounds.width / 2) - 20,
                                                               y: 15,
                                                               width: 40,
                                                               height: 30))
        imageView.image = #imageLiteral(resourceName: "camera")
        
        layer.backgroundColor = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1).cgColor
        addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "backgroundColor")
        animation.fromValue = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1).cgColor
        animation.toValue = #colorLiteral(red: 0.5098039216, green: 0.5098039216, blue: 0.5098039216, alpha: 1).cgColor
        animation.duration = 0.250
        layer.add(animation, forKey: "selectionAnimation")
        layer.backgroundColor = #colorLiteral(red: 0.5098039216, green: 0.5098039216, blue: 0.5098039216, alpha: 1).cgColor
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "backgroundColor")
        animation.fromValue = #colorLiteral(red: 0.5098039216, green: 0.5098039216, blue: 0.5098039216, alpha: 1).cgColor
        animation.toValue = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1).cgColor
        animation.duration = 0.250
        layer.add(animation, forKey: "deselectionAnimation")
        layer.backgroundColor = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1).cgColor
    }
}
