//
//  LetsStartViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 2/28/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class LetsStartViewController: MasterViewController {
  @IBOutlet weak var emailInput: WeirdTextField!
  @IBOutlet weak var emailPassword: WeirdTextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    buildHeaderNavigation()
  }
  
  func buildHeaderNavigation() {
    delegate = self
    emailInput.getWhiteTextField()
    emailPassword.getWhiteTextField()
    emailInput.delegate = self
    emailPassword.delegate = self
    setRightNavigationTitle(title: "Signup", segueIdentifier: "toRegistrationAddress")
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    view.endEditing(true)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let nextViewController = segue.destination as! RegistrationAddressViewController
    nextViewController.newUser = NewUser()
    nextViewController.newUser.email = emailInput.text!
    nextViewController.newUser.password = emailPassword.text!
  }
}

extension LetsStartViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.endEditing(true)
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    textField.resignFirstResponder()
  }
}

extension LetsStartViewController: MasterViewControllerDelegate {
  func performNextViewController(segue: String) {
    if emailInput.text != "" && emailPassword.text != "" {
      performSegue(withIdentifier: segue, sender: nil)
    }
  }
}
