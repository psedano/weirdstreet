//
//  NewUser.swift
//  WeirdStreet
//
//  Created by Pablo Sedano on 4/1/18.
//  Copyright © 2018 Pablo Sedano. All rights reserved.
//

import Foundation

class NewUser {
  private var _email: String!
  private var _password: String!
  private var _street1: String!
  private var _street2: String?
  private var _city: String!
  private var _state: String!
  private var _zipCode: String!
  
  var email: String {
    get {
      return _email
    } set {
      _email = newValue
    }
  }
  
  var password: String {
    get {
      return _password
    } set {
      _password = newValue
    }
  }
  
  var street1: String {
    get {
      return _street1
    } set {
      _street1 = newValue
    }
  }
  
  var street2: String {
    get {
      if let street2 = _street2 {
        return street2
      } else {
        return ""
      }
    } set {
      _street2 = newValue
    }
  }
  
  var city: String {
    get {
      return _city
    } set {
      _city = newValue
    }
  }
  
  var state: String {
    get {
      return _state
    } set {
      _state = newValue
    }
  }
  
  var zipCode: String {
    get {
      return _zipCode
    } set {
      _zipCode = newValue
    }
  }
  
}
