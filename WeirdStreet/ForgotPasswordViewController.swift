//
//  ForgotPasswordViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/13/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: MasterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self
    setRightNavigationTitle(title: "Send", segueIdentifier: "toEmailSent")
  }
}

extension ForgotPasswordViewController: MasterViewControllerDelegate {
  func performNextViewController(segue: String) {
    performSegue(withIdentifier: segue, sender: nil)
  }
}
