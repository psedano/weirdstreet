//
//  SelectNeighborhoodConnector.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 4/1/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import Foundation
import Firebase

class SelectNeighborhoodConnector {
  var ref: DatabaseReference!
  typealias Result = WeirdConstants.ServerResponses

  func getAllNeighborhoods(completion: @escaping(Result, [Neighborhood]) -> Void) {
    ref = Database.database().reference()
    Auth.auth().signInAnonymously { user, error in
      self.ref.child("neighborhoods").observeSingleEvent(of: .value, with: { snapshot in
        print(snapshot)
        let collection = snapshot.value as! [String:AnyObject]
        
        for element in collection {
          var arrNeighborhood = [Neighborhood]()
          print(element)
        }
      })
    }
  }
}
