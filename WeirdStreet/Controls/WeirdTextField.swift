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
    textColor = UIColor.WeirdColors.WSTextForTextField
    frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: 50)
    layer.cornerRadius = 4.0
    font = UIFont(name: "", size: 14)
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
  
  func getWhiteTextField() {
    backgroundColor = UIColor.white
    textColor = UIColor(red: 181/255.0, green: 187/255.0, blue: 1997/255.0, alpha: 255.0/255.0)
    layer.borderColor = UIColor(red: 210/255.0, green: 218/255.0, blue: 231/255.0, alpha: 1).cgColor
    layer.cornerRadius = 4
    textColor = UIColor(red: 23/255.0, green: 43/255.0, blue: 77/255.0, alpha: 255.0/255.0)
  }
}
