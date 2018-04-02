//
//  NewTopicViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/29/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class NewTopicViewController: MasterViewController {
  @IBOutlet weak var tblNewTopic: UITableView!
  @IBOutlet weak var swcPrivate: UISwitch!
  @IBOutlet weak var vwAddPeople: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setRightNavigationTitle(title: "Create", segueIdentifier: "", centerTitle: "New Topic")
    tblNewTopic.dataSource = self
    tblNewTopic.delegate = self
  }
}

extension NewTopicViewController: UITableViewDataSource, UITableViewDelegate {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath.row {
    case 0:
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TextFieldTableViewCell else {
        return UITableViewCell()
      }
      
      cell.configureCell(placeholder: "Name this topic")
      return cell
      
    case 1:
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TextFieldTableViewCell else {
        return UITableViewCell()
      }
      
      cell.configureCell(placeholder: "Description of topic")
      return cell
      
    case 2:
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TextFieldTableViewCell else {
        return UITableViewCell()
      }
      
      cell.configureColorTopicCell()
      return cell
      
    default:
      return UITableViewCell()
    }
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 51
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath.row == 2 {
      performSegue(withIdentifier: "toSelectColor", sender: nil)
    }
  }
}
