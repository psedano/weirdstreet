//
//  CircleView.swift
//  
//
//  Created by Pablo Sedano on 3/10/18.
//

import UIKit

class CircleView: UIButton {
  override func awakeFromNib() {
    super.awakeFromNib()
    
    frame = CGRect(x: 0, y: 0, width: 69, height: 69)
    layer.cornerRadius = frame.width / 2
  }
  
  func addBackgroundColor(color: UIColor) {
    backgroundColor = color
  }

}
