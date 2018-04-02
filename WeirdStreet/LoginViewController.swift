//
//  ViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 1/4/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  @IBOutlet weak var loginButton: WeirdButton!
  @IBOutlet weak var emailText: WeirdTextField!
  @IBOutlet weak var passwordText: WeirdTextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationController?.isNavigationBarHidden = true
    loginButton.setTitle("Log in", for: .normal)
    loginButton.deactivateButton()
    emailText.placeholder = "Email"
    passwordText.placeholder = "Password"
    emailText.delegate = self
    passwordText.delegate = self
  }
}

extension LoginViewController: UITextFieldDelegate {
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    guard let emailInput = emailText.text, let passwordInput = passwordText.text else {
      return false
    }
    
    !emailInput.isEmpty && !passwordInput.isEmpty ? loginButton.activateButton() : loginButton.deactivateButton()
    
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    guard let emailInput = emailText.text, let passwordInput = passwordText.text else {
      return
    }
    
    !emailInput.isEmpty && !passwordInput.isEmpty ? loginButton.activateButton() : loginButton.deactivateButton()
  }
}

