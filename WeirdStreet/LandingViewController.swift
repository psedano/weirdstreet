//
//  LandingViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 2/26/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
  @IBOutlet weak var buttonContinue: WeirdButton!
  @IBOutlet weak var loginButton: WeirdButton!
  
    override func viewDidLoad() {
      super.viewDidLoad()
      self.navigationController?.isNavigationBarHidden = true
      buttonContinue.setTitle("Join Your Neighborhood", for: .normal)
      buttonContinue.activateButton(withBold: true)
      loginButton.setTitle("Log In", for: .normal)
      loginButton.basicButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
