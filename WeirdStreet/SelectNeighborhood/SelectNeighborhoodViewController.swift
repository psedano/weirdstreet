//
//  SelectNeighborhoodViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/7/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class SelectNeighborhoodViewController: MasterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    setRightNavigationTitle(title: "", segueIdentifier: "toSelectNeighborhood")
    addProgressBar(2, totalSections: 3)
  }
}
