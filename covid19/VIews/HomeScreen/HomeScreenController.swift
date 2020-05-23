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
  private var styling: HomeScreenStyle?
  private let analyticBtn = UIButton()
  private let callnowBtn = CustomButton(
    title: "Call Now",
    isIcon: true,
    iconName: .phoneAlt,
    background: THEME.COLOR.CVID_LIGHT_RED,
    textColor: THEME.COLOR.CVID_WHITE,
    centerText: false
  )
  private let smsBtn = CustomButton(
    title: "Send SMS",
    isIcon: true,
    iconName: .comment,
    background: THEME.COLOR.CVID_LIGHT_BLUE,
    textColor: THEME.COLOR.CVID_WHITE,
    centerText: false
  )
  
  private let mockData = MockData()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.styling = HomeScreenStyle(homeView: self.view, analyticBtn: analyticBtn, callButton: callnowBtn, smsButton: smsBtn)
  }
}
