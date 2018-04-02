//
//  TopcsWelcomeViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/20/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class TopicsWelcomeViewController: UIViewController {
  @IBOutlet weak var btnGotit: WeirdButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    btnGotit.activateButton(withBold: true)
  }
  
  @IBAction func btnGotItClick(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
  }
}
