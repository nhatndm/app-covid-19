//
//  Title.swift
//  covid19
//
//  Created by Nhat Nguyen on 17/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
  
  private let value: String?
  private let color: UIColor
  private let size: CGFloat
  private let fontName: String
  
  init(value: String?, color: UIColor?, size: CGFloat?, fontName: String?) {
    self.value = value
    self.color = color ?? THEME.COLOR.CVID_WHITE
    self.size = size ?? CGFloat(20)
    self.fontName = fontName ?? "Poppins-Medium"
  
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
    
    self.font = UIFont(name: self.fontName, size: self.size)
  }
}
