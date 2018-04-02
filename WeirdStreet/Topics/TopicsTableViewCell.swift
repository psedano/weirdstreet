//
//  TopicsTableViewCell.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/21/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class TopicsTableViewCell: UITableViewCell {
  @IBOutlet weak var vwTopic: UIView!
  @IBOutlet weak var lblTitle: UILabel!
  @IBOutlet weak var lblDescription: UILabel!
  @IBOutlet weak var lblTime: UILabel!
  @IBOutlet weak var btnNotification: WeirdButton!
  
  func configureCell() {
    lblTime.font = UIFont(name: "", size: 11)
    vwTopic.layer.cornerRadius = vwTopic.frame.width / 2
    vwTopic.backgroundColor = UIColor.WeirdColors.WSRobinsEggBlue
    lblTitle.text = "Classifieds"
    lblDescription.text = "Buy, sell, or give it away, this is the place."
    lblDescription.adjustsFontSizeToFitWidth = true
    btnNotification.notificationStyle()
  }
}
