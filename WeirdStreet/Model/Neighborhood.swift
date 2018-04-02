//
//  Neighborhood.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 4/1/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import Foundation

class Neighborhood {
  private var _name: String!
  
  var name: String {
    get {
      return _name
    } set {
      _name = newValue
    }
  }
}
