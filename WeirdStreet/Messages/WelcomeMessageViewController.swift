//
//  WelcomeMessageViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 4/1/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class WelcomeMessageViewController: UIViewController {
  @IBOutlet weak var btnDismiss: WeirdButton!
  @IBOutlet weak var lblInfo: WeirdLabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    btnDismiss.activateButton(withBold: true)
  }
  
  @IBAction func btnDismissTapped(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
}
