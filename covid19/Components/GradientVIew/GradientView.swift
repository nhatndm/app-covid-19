//
//  GradientLayer.swift
//  covid19
//
//  Created by Nhat Nguyen on 17/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit


class GradientView: UIView {

  private let gradient : CAGradientLayer = CAGradientLayer()
  private let startColor: UIColor
  private let endColor: UIColor
  private let startPoint: CGPoint
  private let endPoint: CGPoint

  init(startColor: UIColor, endColor: UIColor, startPoint: CGPoint, endPoint: CGPoint) {
    self.startColor = startColor
    self.endColor = endColor
    self.startPoint = startPoint
    self.endPoint = endPoint
    
    super.init(frame: .zero)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func layoutSublayers(of layer: CALayer) {
    super.layoutSublayers(of: layer)
    gradient.frame = self.bounds
  }

  override public func draw(_ rect: CGRect) {
    gradient.frame = self.bounds
    gradient.colors = [startColor.cgColor, endColor.cgColor]
    gradient.startPoint = startPoint
    gradient.endPoint = endPoint
    
    if gradient.superlayer == nil {
        layer.insertSublayer(gradient, at: 0)
    }
  }
}
