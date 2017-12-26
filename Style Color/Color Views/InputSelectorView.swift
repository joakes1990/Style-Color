//
//  InputSelectorView.swift
//  Style Color
//
//  Created by justin on 12/26/17.
//  Copyright © 2017 Oklasoft LLC. All rights reserved.
//

import UIKit

class InputSelectorView: UIView {
    
    override func draw(_ rect: CGRect) {
        let galleryView: GalleryButtonView = GalleryButtonView(frame: CGRect(x: 0,
                                                                 y: 0,
                                                                 width: 160,
                                                                 height: 60))
        let cameraView: CameraButtonView = CameraButtonView(frame: CGRect(x: (bounds.width / 2),
                                                                          y: 0,
                                                                          width: 160,
                                                                          height: 60))
        addSubview(cameraView)
        addSubview(galleryView)
        
        
        let divider: UIView = UIView(frame: CGRect(x: (bounds.size.width / 2),
                                                   y: 0,
                                                   width: 1,
                                                   height: bounds.size.height))
        divider.backgroundColor = .black
        addSubview(divider)
        
        layer.cornerRadius = 9
        layer.masksToBounds = true
    }
 
}
