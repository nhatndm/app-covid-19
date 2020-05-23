//
//  Country.swift
//  covid19
//
//  Created by Nhat Nguyen on 17/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit

class Country {
  let id: String
  let name: String
  let shortName: String
  let flag: UIImage
  
  init(name: String, shortName: String, flag: UIImage) {
    self.id = UUID().uuidString
    self.name = name
    self.shortName = shortName
    self.flag = flag
  }

}

