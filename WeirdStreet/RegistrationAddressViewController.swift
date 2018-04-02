//
//  RegistrationAddressViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 1/4/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class RegistrationAddressViewController: MasterViewController {
  @IBOutlet weak var txtStreet1️⃣: WeirdTextField!
  @IBOutlet weak var txtStreet2️⃣: WeirdTextField!
  @IBOutlet weak var txtCity🏙: WeirdTextField!
  @IBOutlet weak var txtState: WeirdTextField!
  @IBOutlet weak var txtZipCode: WeirdTextField!
  var newUser: NewUser!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
    delegate = self
  }
  
  func setupUI() {
    setRightNavigationTitle(title: "Next", segueIdentifier: "toSelectNeighborhood")
    addProgressBar(1, totalSections: 3)
    txtStreet1️⃣.getWhiteTextField()
    txtStreet2️⃣.getWhiteTextField()
    txtCity🏙.getWhiteTextField()
    txtState.getWhiteTextField()
    txtZipCode.getWhiteTextField()
  }
}

extension RegistrationAddressViewController: MasterViewControllerDelegate {
  func performNextViewController(segue: String) {
    if txtStreet1️⃣.text != "" && txtCity🏙.text != ""  && txtState.text != "" && txtZipCode.text != "" {
      performSegue(withIdentifier: segue, sender: nil)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    newUser.street1 = txtStreet1️⃣.text!
    if let street2 = txtStreet2️⃣.text, street2 != "" {
      newUser.street2 = txtStreet2️⃣.text!
    }
    newUser.city = txtCity🏙.text!
    newUser.state = txtState.text!
    newUser.zipCode = txtZipCode.text!
    
    let neighborhoodVC = segue.destination as! SelectNeighborhoodViewController
    neighborhoodVC.newUser = newUser
  }
}
