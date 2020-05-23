//
//  AutoLayoutHelper.swift
//  covid19
//
//  Created by Nhat Nguyen on 18/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit

class AutoLayoutHelper {
  
  static let defaultScreenFromDesign = CGFloat(812)
  
  static func calculateMeasure(designMeasure: CGFloat) -> CGFloat {
    let currentHeight = UIScreen.main.bounds.height
        
    return (currentHeight * designMeasure) / defaultScreenFromDesign
  }
}
