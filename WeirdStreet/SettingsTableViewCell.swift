//
//  SettingsTableViewCell.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/19/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
  @IBOutlet weak var imageRow: UIImageView!
  @IBOutlet weak var lblDescription: UILabel!
  @IBOutlet weak var arrowImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
