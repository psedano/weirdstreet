//
//  FeedbackViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/19/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }

  @IBAction func toAddComments(sender: UIButton) {
    performSegue(withIdentifier: "toAddComments", sender: sender.titleLabel?.text)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let description = sender as? String
    let vc = segue.destination as? AddCommentViewController
    vc?.selectedFeedback = description
  }
}
