//
//  CountryCard.swift
//  covid19
//
//  Created by Nhat Nguyen on 17/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class Card: UIView {
  
  let stackView = UIStackView()
  var cardColor: UIColor
  
  var titleLabel: CustomLabel
  var valueLabel: CustomLabel
  
  init(title: String?, value: Int?, backgroundColor: UIColor = THEME.COLOR.CVID_LIGHT_YELLOW) {
    self.titleLabel = CustomLabel(value: title, color: nil, size: 15, isBold: nil)
    self.valueLabel = CustomLabel(value: "\(value ?? 0)", color: nil, size: 35, isBold: true)
    
    self.cardColor = backgroundColor
    
    super.init(frame: CGRect.zero)
    
    // STYLE
    styleCard()
    
    
    // SETUP STACK VIEW
    setupStackView()
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func styleCard() {
    self.backgroundColor = self.cardColor
    self.translatesAutoresizingMaskIntoConstraints = false
    
    self.layer.cornerRadius = 10
  }
  
  private func setupStackView(){

    self.addSubview(stackView)
    
    self.stackView.translatesAutoresizingMaskIntoConstraints = false
    self.stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15).isActive = true
    self.stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
    self.stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
    self.stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
    
    self.stackView.axis = .vertical
    self.stackView.alignment = .top
    self.stackView.distribution = .equalSpacing
    
    self.stackView.addArrangedSubview(self.titleLabel)
    self.stackView.addArrangedSubview(self.valueLabel)
  }
}
