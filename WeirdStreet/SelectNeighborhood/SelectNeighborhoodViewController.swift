//
//  SelectNeighborhoodViewController.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/7/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import UIKit

class SelectNeighborhoodViewController: MasterViewController {
  @IBOutlet weak var tblNeighborhoods: UITableView!
  var newUser: NewUser!

  fileprivate var presenter: SelectNeighborhoodPresentable!
  var arrNeighborhoods = [Neighborhood]()
  
  deinit {
    presenter = nil
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    setRightNavigationTitle(title: "", segueIdentifier: "toNotifications")
    addProgressBar(2, totalSections: 3)
    presenter = SelectNeighborhoodPresenter(view: self)
    tblNeighborhoods.dataSource = self
    tblNeighborhoods.delegate = self
    presenter.getAllNeighborhoods()
  }
}

extension SelectNeighborhoodViewController: UITableViewDataSource, UITableViewDelegate {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrNeighborhoods.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell() }
    cell.textLabel?.text = arrNeighborhoods[indexPath.row].name
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "toNotifications", sender: nil)
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 61
  }
}

extension SelectNeighborhoodViewController: SelectNeighborhoodViewable {
  func showAllNeighborhoods(neighborhoods: [Neighborhood]) {
    arrNeighborhoods = neighborhoods
  }
}
