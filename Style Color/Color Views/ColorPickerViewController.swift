//
//  ViewController.swift
//  Style Color
//
//  Created by justin on 12/24/17.
//  Copyright © 2017 Oklasoft LLC. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var colorTitleTextField: UITextField!
    @IBOutlet weak var redSlider: ColorSlider!
    @IBOutlet weak var greenSlider: ColorSlider!
    @IBOutlet weak var blueSlider: ColorSlider!
    @IBOutlet weak var colorView: ColorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorTitleTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setColor() {
        let color: UIColor = UIColor(red: CGFloat(redSlider.value),
                                     green: CGFloat(greenSlider.value),
                                     blue: CGFloat(blueSlider.value),
                                     alpha: 1)
        colorView.setColor(color: color)
    }
    
    @IBAction func changedRedValue(_ sender: Any) {
        setColor()
    }
    
    @IBAction func changeGreenValue(_ sender: Any) {
        setColor()
    }
    
    @IBAction func changedBlueValue(_ sender: Any) {
        setColor()
    }
    
}

extension ColorPickerViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let title: String = colorTitleTextField.text ?? NSLocalizedString("New Color", comment: "New Color")
        navigationItem.title = title
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let title: String = textField.text ?? NSLocalizedString("New Color", comment: "New Color")
        navigationItem.title = title
        return true
    }
}
