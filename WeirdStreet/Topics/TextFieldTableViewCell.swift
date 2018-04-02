//
//  TextFieldTableViewCell.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/29/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
  var txtField: UITextField?
  var lblTopic: UILabel!
  var imgColor: UIView?
  
  func configureCell(placeholder: String) {
    txtField = UITextField(frame: CGRect(x: 10, y: 0, width: bounds.width, height: bounds.height))
    txtField!.font = UIFont(name: "System", size: 14)
    txtField!.textColor = UIColor.WeirdColors.WSPlaceholder
    self.addSubview(txtField!)
    txtField?.placeholder = placeholder
  }
  
  func configureColorTopicCell() {
    imgColor = UIView(frame: CGRect(x: bounds.width - 44, y: 9, width: 34, height: 34))
    imgColor!.layer.cornerRadius = imgColor!.frame.width / 2
    imgColor!.backgroundColor = UIColor.WeirdColors.WSPortlandOrange
    self.addSubview(imgColor!)
    
    lblTopic = UILabel(frame: CGRect(x: 10, y: 0, width: bounds.width - 52, height: bounds.height))
    lblTopic.font = UIFont(name: "System-Medium", size: 14)
    lblTopic.text = "Topic Color"
    self.addSubview(lblTopic)
  }
}

extension TextFieldTableViewCell: SelectColorDelegate {
  func selectedColor(color: UIColor) {
    imgColor!.backgroundColor = color
  }
}
