//
//  SettingsViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/13/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
  @IBOutlet weak var btnLogout: WeirdButton!
  @IBOutlet weak var tblSettings: UITableView!
  let tableOptions = ["Profile", "Notifications", "Send Feedback"]
  let imageOptions = ["accountCopy", "bell", "msg"]
  let segues = ["toSetProfile", "toSettNotifications", "toSendFeedback"]

  override func viewDidLoad() {
    super.viewDidLoad()
    btnLogout.redWhiteButton()
    tblSettings.dataSource = self
    tblSettings.delegate = self
  }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingscell") as? SettingsTableViewCell else {
      return UITableViewCell()
    }
    cell.lblDescription.text = tableOptions[indexPath.row]
    cell.arrowImage.image = UIImage(named: "backDarkCopy2")
    cell.imageRow.image = UIImage(named: imageOptions[indexPath.row])
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 58
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: segues[indexPath.row], sender: nil)
  }
}
