//
//  MainNavigationController.swift
//  covid19
//
//  Created by Nhat Nguyen on 16/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

  let HomeScreenCtrl = HomeScreenController()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // SET ROOT SCREEN
    self.setViewControllers([HomeScreenCtrl], animated: true)
    
    // SET NAVAIGATION BAR HIDDEN
    self.setNavigationBarHidden(true, animated: true)
    
  }
  
}
