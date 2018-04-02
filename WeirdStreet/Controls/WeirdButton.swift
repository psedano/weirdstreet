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
    self.titleLabel?.font = UIFont(name: "", size: 18)
  }
  
  func activateButton() {
    backgroundColor = UIColor.WeirdColors.WSBackgroundButtonColorActive
    setTitleColor(UIColor.white, for: .normal)
  }
  
  func deactivateButton() {
    backgroundColor = UIColor.WeirdColors.WSBackgroundButtonColorInactive
    setTitleColor(UIColor.white, for: .normal)
  }
  
  func basicButton() {
    backgroundColor = UIColor.clear
    setTitleColor(UIColor(red: 23/255.0, green: 43/255.0, blue: 77/255.0, alpha: 255/255.0), for: .normal)
    self.titleLabel?.font = UIFont(name: "", size: 18)
  }
}
