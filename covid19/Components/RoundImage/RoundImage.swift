//
//  RoundImage.swift
//  covid19
//
//  Created by Nhat Nguyen on 17/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class RoundImage: UIImageView {
  
  private let imgSize: Int
  
  init(image: UIImage, imgSize: Int = 40) {
    self.imgSize = imgSize
    
    super.init(image: image)
    
    // STYLING IMAGE
    stylingImage()
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func stylingImage() {
    self.heightAnchor.constraint(equalToConstant: CGFloat(self.imgSize)).isActive = true
    self.widthAnchor.constraint(equalToConstant: CGFloat(self.imgSize)).isActive = true
    self.contentMode = .scaleAspectFit
    self.layer.masksToBounds = true
    self.layer.cornerRadius = CGFloat(self.imgSize / 2)
    self.contentMode = .scaleAspectFill
  }
  
}
