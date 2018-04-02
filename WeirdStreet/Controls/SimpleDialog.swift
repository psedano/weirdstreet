//
//  SimpleDialog.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/9/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class SimpleDialog: UIView {
  override func awakeFromNib() {
    super.awakeFromNib()
    layer.cornerRadius = 6
    layer.borderColor = UIColor.WeirdColors.WSIron.cgColor
    layer.borderWidth = 1
  }
}
