//
//  AddCommentViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/19/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class AddCommentViewController: MasterViewController {
  var selectedFeedback: String!
  let descriptions = ["We are so sorry. What could we do better?",
                      "Okay is okay. What could we do better?",
                      "Awesome! What is it that you like?"]
  @IBOutlet weak var imgReaction: UIImageView!
  @IBOutlet weak var lblDescription: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self
    setRightNavigationTitle(title: "Send", segueIdentifier: "toFeedbackResult")
    imgReaction.image = UIImage(named: selectedFeedback)
    
    if selectedFeedback == "bad" {
      lblDescription.text = descriptions[0]
    }
    
    if selectedFeedback == "okay" {
      lblDescription.text = descriptions[1]
    }
    
    if selectedFeedback == "great" {
      lblDescription.text = descriptions[2]
    }
  }
}

extension AddCommentViewController: MasterViewControllerDelegate {
  func performNextViewController(segue: String) {
    performSegue(withIdentifier: segue, sender: nil)
  }
}
