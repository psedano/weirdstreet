//
//  WeirdLabel.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/7/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class WeirdLabel: UILabel {
  override func awakeFromNib() {
    super.awakeFromNib()
    self.textColor = UIColor.WeirdColors.WSLabelColor
    self.tintColor = UIColor.WeirdColors.WSLabelColor
    self.font = UIFont(name: "Arial", size: 12)
  }
}
