//
//  WeirdButton.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 2/24/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class WeirdButton: UIButton {
  override func awakeFromNib() {
    super.awakeFromNib()
    layer.cornerRadius = 4.0
    self.titleLabel?.font = UIFont(name: "System", size: 18)
  }
  
  func activateButton(withBold: Bool = false) {
    if withBold { self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18) }

    UIView.animate(withDuration: 1.0) {
      self.backgroundColor = UIColor.WeirdColors.WSBackgroundButtonColorActive
      self.setTitleColor(UIColor.white, for: .normal)
      self.isEnabled = true
    }
  }
  
  func deactivateButton() {
    backgroundColor = UIColor.WeirdColors.WSBackgroundButtonColorInactive
    setTitleColor(UIColor.white, for: .normal)
    isEnabled = false
  }
  
  func basicButton(bold: Bool = false) {
    backgroundColor = UIColor.clear
    setTitleColor(UIColor(red: 23/255.0, green: 43/255.0, blue: 77/255.0, alpha: 255/255.0), for: .normal)
    self.titleLabel?.font = UIFont(name: "", size: 18)
  }
  
  func redWhiteButton() {
    setTitleColor(UIColor.WeirdColors.WSPomegranate, for: .normal)
  }
  
  func notificationStyle() {
    backgroundColor = UIColor.WeirdColors.WSSapphire
    setTitleColor(UIColor.white, for: .normal)
    self.titleLabel?.font = UIFont(name: "", size: 10)
    self.layer.cornerRadius = 10
    isEnabled = false
  }
}
