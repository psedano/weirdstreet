//
//  SelectNeighborhoodProtocols.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 3/7/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import Foundation

protocol SelectNeighborhoodPresentable {
  func getAllNeighborhoods()
}

protocol SelectNeighborhoodViewable: class {
  func showAllNeighborhoods(neighborhoods: [Neighborhood])
}
