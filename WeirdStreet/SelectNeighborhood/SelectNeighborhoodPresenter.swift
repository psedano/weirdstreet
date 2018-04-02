//
//  SelectNeighborhoodPresenter.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/7/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import Foundation

class SelectNeighborhoodPresenter {
  fileprivate weak var view: SelectNeighborhoodViewable?
  private var neighboorhoodConnector = SelectNeighborhoodConnector()
//  var neighborhoods = ["East Cesar Chavez",
//                       "East 6th",
//                       "East 12th",
//                       "Lower Burnet",
//                       "Manor Road",
//                       "North Lamar",
//                       "Rainey Street",
//                       "Red River",
//                       "South 1st",
//                       "South Lamar",
//                       "Webberville",
//                       "West 6th"]
  
  init(view: SelectNeighborhoodViewable) {
    self.view = view
  }
}

extension SelectNeighborhoodPresenter: SelectNeighborhoodPresentable {
  func getAllNeighborhoods() {
    neighboorhoodConnector.getAllNeighborhoods { result, neighborhoods  in
      self.view?.showAllNeighborhoods(neighborhoods: neighborhoods)
    }
  }
}
