//
//  TopicsViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/20/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class TopicsViewController: MasterViewController {
  var arrTopics = ["title": "Classifieds", "description":"Buy, sell, or give it away, this is the place."]
  @IBOutlet weak var tblTopics: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
    setRightNavigationTitle(title: "+", segueIdentifier: "toNewTopic")
    delegate = self
    tblTopics.dataSource = self
    tblTopics.delegate = self
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    if UserDefaults.standard.value(forKey: "presentWelcome") == nil {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let topicsViewController = storyboard.instantiateViewController(withIdentifier: "TopicsViewController")
      present(topicsViewController, animated: true, completion: nil)
      UserDefaults.standard.set(false, forKey: "presentWelcome")
    }
  }
}

extension TopicsViewController: UITableViewDataSource, UITableViewDelegate {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrTopics.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "topicscell") as? TopicsTableViewCell else {
      return UITableViewCell()
    }
    
    cell.configureCell()
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 91
  }
}

extension TopicsViewController: MasterViewControllerDelegate {
  func performNextViewController(segue: String) {
    performSegue(withIdentifier: segue, sender: nil)
  }
}
