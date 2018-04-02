//
//  NotificationsViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/19/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController {
  @IBOutlet weak var tblNotifications: UITableView!
  let options = ["Urgent Alerts", "Messages", "Replies"]

    override func viewDidLoad() {
      super.viewDidLoad()
      tblNotifications.dataSource = self
      tblNotifications.delegate = self
    }
}

extension NotificationsViewController: UITableViewDataSource, UITableViewDelegate {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "notificationcell") as? NotificationsTableViewCell else {
      return UITableViewCell()
    }
    
    cell.lblOption.text = options[indexPath.row]
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 58
  }
}
