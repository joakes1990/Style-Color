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
    override func viewDidLoad() {
        super.viewDidLoad()
        colorTitleTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
