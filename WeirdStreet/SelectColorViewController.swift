//
//  SelectColorViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/10/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

protocol SelectColorDelegate {
  func selectedColor(color: UIColor)
}

class SelectColorViewController: MasterViewController {
  @IBOutlet weak var circle1: CircleView!
  @IBOutlet weak var circle2: CircleView!
  @IBOutlet weak var circle3: CircleView!
  @IBOutlet weak var circle4: CircleView!
  @IBOutlet weak var circle5: CircleView!
  @IBOutlet weak var circle6: CircleView!
  @IBOutlet weak var circle7: CircleView!
  @IBOutlet weak var circle8: CircleView!
  @IBOutlet weak var circle9: CircleView!
  @IBOutlet weak var circle10: CircleView!
  @IBOutlet weak var circle11: CircleView!
  @IBOutlet weak var circle12: CircleView!
  @IBOutlet weak var circle13: CircleView!
  @IBOutlet weak var circle14: CircleView!
  @IBOutlet weak var circle15: CircleView!
  @IBOutlet weak var circle16: CircleView!
  @IBOutlet weak var circle17: CircleView!
  @IBOutlet weak var circle18: CircleView!
  @IBOutlet weak var circle19: CircleView!
  @IBOutlet weak var circle20: CircleView!
  var colorDelegate: SelectColorDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setRightNavigationTitle(title: "", segueIdentifier: "")
    setViewColors()
  }

  func setViewColors() {
    circle1.addBackgroundColor(color: UIColor.WeirdColors.WSPortlandOrange)
    circle2.addBackgroundColor(color: UIColor.WeirdColors.WSPRazzMatazz)
    circle3.addBackgroundColor(color: UIColor.WeirdColors.WSRosePink)
    circle4.addBackgroundColor(color: UIColor.WeirdColors.WSDeepLilac)
    circle5.addBackgroundColor(color: UIColor.WeirdColors.WSRobinsEggBlue)
    circle6.addBackgroundColor(color: UIColor.WeirdColors.WSBleuDeFrance)
    circle7.addBackgroundColor(color: UIColor.WeirdColors.WSSaphireLight)
    circle8.addBackgroundColor(color: UIColor.WeirdColors.WSSaphireDark)
    circle9.addBackgroundColor(color: UIColor.WeirdColors.WSAlgaeGreen)
    circle10.addBackgroundColor(color: UIColor.WeirdColors.WSAndroidGreen)
    circle11.addBackgroundColor(color: UIColor.WeirdColors.WSMountainMeadow)
    circle12.addBackgroundColor(color: UIColor.WeirdColors.WSSalem)
    circle13.addBackgroundColor(color: UIColor.WeirdColors.WSManz)
    circle14.addBackgroundColor(color: UIColor.WeirdColors.WSSunglow)
    circle15.addBackgroundColor(color: UIColor.WeirdColors.WSNeonCarrot)
    circle16.addBackgroundColor(color: UIColor.WeirdColors.WSTiaMaria)
    circle17.addBackgroundColor(color: UIColor.WeirdColors.WSPottersClay)
    circle18.addBackgroundColor(color: UIColor.WeirdColors.WSFuscousGray)
    circle19.addBackgroundColor(color: UIColor.WeirdColors.WSAluminum)
    circle20.addBackgroundColor(color: UIColor.WeirdColors.WSFuscousGray)
  }
  
  @IBAction func selectedColor(sender: CircleView) {
    colorDelegate?.selectedColor(color: sender.backgroundColor!)
    dismiss(animated: true, completion: nil)
  }
}
