//
//  CustomButton.swift
//  covid19
//
//  Created by Nhat Nguyen on 23/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit
import FontAwesome_swift

class CustomButton: UIButton {
  
  private let title: String
  private let isIcon: Bool
  private let iconName: FontAwesome
  private let background: UIColor
  private let textColor: UIColor
  private let centerText: Bool
  
  init(title: String?, isIcon: Bool, iconName: FontAwesome?, background: UIColor?, textColor: UIColor?, centerText: Bool?) {
    self.title = title ?? "Button"
    self.isIcon = isIcon
    self.iconName = iconName ?? .phoneAlt
    self.background = background ?? THEME.COLOR.CVID_LIGHT_BLUE
    self.textColor = textColor ?? THEME.COLOR.CVID_LIGHT_RED
    self.centerText = centerText ?? false
    
    super.init(frame: CGRect.zero)
  }

  // Override func viewDid
  override func didMoveToSuperview() {
    setupButton()
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }


  func setupButton(){
    guard let superview = self.superview else {
      print("superview does not exist")
      return
    }
    
    translatesAutoresizingMaskIntoConstraints = false
    backgroundColor = self.background
    
    if (self.isIcon) {
      return self.setupBtnWithIcon(parent: superview)
    }
    
    self.setupBtnWithoutIcon(parent: superview)
  }
  
  private func setupBtnWithIcon(parent: UIView) {
    let iconLabel = UILabel()
    
    addSubview(iconLabel)
    
    iconLabel.translatesAutoresizingMaskIntoConstraints = false
    
    iconLabel.font = UIFont.fontAwesome(ofSize: AutoLayoutHelper.calculateMeasure(designMeasure: 24), style: .solid)
    iconLabel.text = String.fontAwesomeIcon(name: self.iconName)
    iconLabel.textColor = self.textColor
    iconLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    iconLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: AutoLayoutHelper.calculateMeasure(designMeasure: 24)).isActive = true
    
    let btnTitle = CustomLabel(
      value: self.title,
      color: THEME.COLOR.CVID_WHITE,
      size: AutoLayoutHelper.calculateMeasure(designMeasure: 16),
      fontName: "Poppins-Medium"
    )
    
    addSubview(btnTitle)
    
    btnTitle.translatesAutoresizingMaskIntoConstraints = false
    
    if (self.centerText) {
      btnTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    } else {
      btnTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
      btnTitle.leadingAnchor.constraint(equalTo: iconLabel.trailingAnchor, constant: AutoLayoutHelper.calculateMeasure(designMeasure: 15)).isActive = true
    }
  }
  
  private func setupBtnWithoutIcon(parent: UIView) {
    
  }
}
