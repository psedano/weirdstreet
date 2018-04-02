//
//  ForgotPasswordEmailViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/9/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class ForgotPasswordEmailViewController: MasterViewController {
  @IBOutlet weak var btnOpenMailApp: WeirdButton!

    override func viewDidLoad() {
      super.viewDidLoad()
      setRightNavigationTitle(title: "", segueIdentifier: "")
      btnOpenMailApp.activateButton(withBold: true)
    }
}
