//
//  FeedbackResultViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/19/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class FeedbackResultViewController: MasterViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
      setRightNavigationTitle(title: "Done", segueIdentifier: "toBackSettings")
      delegate = self
    }
}

extension FeedbackResultViewController: MasterViewControllerDelegate {
  func performNextViewController(segue: String) {
    performSegue(withIdentifier: segue, sender: nil)
  }
}
