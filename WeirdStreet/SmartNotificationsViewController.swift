//
//  SmartNotificationsViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/9/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class SmartNotificationsViewController: UIViewController {
  @IBOutlet weak var btnYes: WeirdButton!
  @IBOutlet weak var btnNotNow: WeirdButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    btnYes.activateButton()
    btnNotNow.basicButton()
  }
}
