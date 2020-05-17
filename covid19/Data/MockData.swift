//
//  Data.swift
//  covid19
//
//  Created by Nhat Nguyen on 17/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit

struct MockData {
  
  var countries: [Country] {
    let USA = Country(name: "America", shortName: "USA", flag: UIImage(named: "united-states-of-america-flag-icon-256")!)
    
    let Malaysia = Country(name: "Malaysia", shortName: "Maylaysia", flag: UIImage(named: "malaysia-flag-icon-256")!)

    let Singapore = Country(name: "Singapore", shortName: "Singapore", flag: UIImage(named: "singapore-flag-icon-256")!)

    let Spain = Country(name: "Spain", shortName: "Spain", flag: UIImage(named: "spain-flag-icon-256")!)

    let VietNam = Country(name: "Viet Nam", shortName: "VietNam", flag: UIImage(named: "vietnam-flag-icon-256")!)

    let UK = Country(name: "United Kingdom", shortName: "United Kingdom", flag: UIImage(named: "united-kingdom-flag-icon-256")!)

    
    return [VietNam, Singapore, USA, UK, Malaysia, Spain]
  }
}
