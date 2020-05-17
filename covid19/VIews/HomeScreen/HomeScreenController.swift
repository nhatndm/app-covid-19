//
//  HomeScreenController.swift
//  covid19
//
//  Created by Nhat Nguyen on 16/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class HomeScreenController: UIViewController {
  
  // Since the init function is not implemented, that's a reason why define stylying as optional
  var styling: HomeScreenStyle?
  var analyticBtn = UIButton()
  var mockData = MockData()
  var card = Card(title: "Affected", value: 1000)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.styling = HomeScreenStyle(homeView: self.view, analyticBtn: analyticBtn)
    
    self.view.addSubview(card)
    
    card.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    card.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    card.widthAnchor.constraint(equalToConstant: 200).isActive = true
    card.heightAnchor.constraint(equalToConstant: 100).isActive = true
  }
}
