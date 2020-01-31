//
//  AgeInputController.swift
//  UI_presentation_1
//
//  Created by Yangjin Cho on 2020/01/28.
//  Copyright © 2020 임연지. All rights reserved.
//
import UIKit
import Foundation

class AgeViewController: UIViewController {
    
    @IBOutlet weak var ageInputTextField: UITextField!
    
    @IBOutlet weak var settedUserAgeLabel: UILabel!
    
    @IBOutlet weak var ageInputSaveButton: UIBarButtonItem!
    
    @IBAction func showAlert() {
        // UIAlertController를 생성해야 한다. style은 .alert로 해준다.
        let alertController = UIAlertController(title: "User Age Saved!", message: "Your age has been saved.", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func ageInputSaveButtonClicked(_ sender: Any?) {
        let userAge = ageInputTextField.text
        print(userAge)
        showAlert()
        }
    }
    

