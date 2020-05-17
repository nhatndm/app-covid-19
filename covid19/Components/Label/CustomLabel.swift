//
//  Title.swift
//  covid19
//
//  Created by Nhat Nguyen on 17/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
  
  var value: String?
  var color: UIColor
  var size: CGFloat
  var isBold: Bool
  
  init(value: String?, color: UIColor?, size: CGFloat?, isBold: Bool?) {
    self.value = value
    self.color = color ?? THEME.COLOR.CVID_WHITE
    self.size = size ?? CGFloat(20)
    self.isBold = isBold ?? false
  
    super.init(frame: CGRect.zero)
    
    // SETUP STYLE
    setupStyle()
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupStyle(){
    self.text = self.value
    self.textColor = self.color
    
    if (self.isBold) {
      self.font = UIFont(name: "Poppins-Medium", size: self.size)
    } else {
      self.font = UIFont(name: "Poppins-Regular", size: self.size)
    }
    
  }
}
