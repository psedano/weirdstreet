//
//  MessagesViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 4/1/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(true)
    
    if UserDefaults.standard.value(forKey: "showWelcomeMessage") == nil {
      UserDefaults.standard.setValue(true, forKey: "showWelcomeMessage")
      let mainSB = UIStoryboard(name: "Main", bundle: nil)
      let welcomeController = mainSB.instantiateViewController(withIdentifier: "WelcomeMessageViewController")
      present(welcomeController, animated: true, completion: nil)
    }
  }
}
