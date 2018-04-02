//
//  WeirdTextView.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 2/26/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class WeirdTextField: UITextField {
  let padding = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
  
  override func awakeFromNib() {
    super.awakeFromNib()
    backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 255.0/255.0)
    frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: 50)
    layer.cornerRadius = 4.0
  }
  
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return UIEdgeInsetsInsetRect(bounds, padding)
  }
  
  override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
    return UIEdgeInsetsInsetRect(bounds, padding)
  }
  
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return UIEdgeInsetsInsetRect(bounds, padding)
  }
}
