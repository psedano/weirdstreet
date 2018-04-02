//
//  MasterViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/7/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

protocol MasterViewControllerDelegate {
  func performNextViewController(segue: String)
}

class MasterViewController: UIViewController {
  var segueDescription: String?
  var delegate: MasterViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()
    configureNavigationBar()
  }
  
  func configureNavigationBar() {
    guard let navigationBar = self.navigationController?.navigationBar else { return }
    navigationBar.tintColor = UIColor.WeirdColors.WSBackgroundButtonColorActive
    self.navigationController?.isNavigationBarHidden = false
    navigationBar.backgroundColor = UIColor(red: 249/255.0, green: 249/255.0, blue: 249/255.0, alpha: 0.79)
  }
  
  func setRightNavigationTitle(title: String, segueIdentifier: String, centerTitle: String = "") {
    segueDescription = segueIdentifier
    let rightBarButton = UIBarButtonItem()
    rightBarButton.title = title
    rightBarButton.target = self
    rightBarButton.action = #selector(goToNextVC)
    self.navigationItem.rightBarButtonItem = rightBarButton
    let leftBarButton = UIBarButtonItem()
    leftBarButton.title = "Back"
    self.navigationItem.backBarButtonItem = leftBarButton
    self.navigationItem.title = centerTitle
  }
  
  @objc func goToNextVC() {
    guard let nextSegueIdentifier = segueDescription else { return }
    self.delegate?.performNextViewController(segue: nextSegueIdentifier)
  }
  
  func addProgressBar(_ step: CGFloat = 1, totalSections: Int = 1) {
    guard let navigationBar = self.navigationController?.navigationBar else { return }
    var newPosition: CGFloat = 0
    let widthOfSection = view.bounds.width / CGFloat(totalSections)

    for section in 1...totalSections {
      let view = UIView(frame: CGRect(x: newPosition, y: navigationBar.frame.height + 20, width: widthOfSection, height: 4))

      let progressBarSectionColor = section <= Int(step) ? UIColor.WeirdColors.WSBackgroundButtonColorActive : UIColor.white
      view.backgroundColor = progressBarSectionColor
      self.view.addSubview(view)

      if section == Int(step) {
        view.frame = CGRect(x: newPosition, y: navigationBar.frame.height + 20, width: 0, height: 4)

        UIView.animate(withDuration: 1.0, animations: {
          view.frame = CGRect(x: newPosition, y: navigationBar.frame.height + 20, width: widthOfSection, height: 4)
        })
      }

      newPosition += widthOfSection
    }
  }
}
