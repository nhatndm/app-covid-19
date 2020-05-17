//
//  HomeScreenStyle.swift
//  covid19
//
//  Created by Nhat Nguyen on 17/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit

class HomeScreenStyle {
  
  let homeView: UIView
  lazy var innerView = UIView()
  
  // ANALYTIC BUTTON
  let analyticBtn: UIButton
  
  init(homeView: UIView, analyticBtn: UIButton) {
    self.homeView = homeView
    self.analyticBtn = analyticBtn
    
    // INIT PARENT VIEW STYLING
    styleHomeView()
    
    // STYLE ANALYTIC BUTTON
    styleAnalyticBtn()
  }
  
  // STYLE PARENT VIEW
  private func styleHomeView(){
    self.homeView.backgroundColor = THEME.COLOR.CVID_WHITE
    
    self.homeView.addSubview(self.innerView)
    
    self.innerView.translatesAutoresizingMaskIntoConstraints = false
    self.innerView.topAnchor.constraint(equalTo: self.homeView.safeAreaLayoutGuide.topAnchor).isActive = true
    self.innerView.bottomAnchor.constraint(equalTo: self.homeView.bottomAnchor).isActive = true
    self.innerView.leadingAnchor.constraint(equalTo: self.homeView.leadingAnchor, constant: 30).isActive = true
    self.innerView.trailingAnchor.constraint(equalTo: self.homeView.trailingAnchor, constant: 30).isActive = true
  }
  
  // STYLE ANALYTIC BUTTON
  private func styleAnalyticBtn(){
    self.homeView.addSubview(analyticBtn)
    
    self.analyticBtn.translatesAutoresizingMaskIntoConstraints = false
    self.analyticBtn.setBackgroundImage(UIImage(named: "analytics"), for: .normal)
    self.analyticBtn.topAnchor.constraint(equalTo: self.innerView.topAnchor, constant: 20).isActive = true
    self.analyticBtn.leadingAnchor.constraint(equalTo: self.innerView.leadingAnchor).isActive = true
    self.analyticBtn.widthAnchor.constraint(equalToConstant: 30).isActive = true
    self.analyticBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true  }
}
