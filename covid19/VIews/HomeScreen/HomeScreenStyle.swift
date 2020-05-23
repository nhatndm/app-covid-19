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
  
  // PARENT VIEW
  let homeView: UIView
  lazy var innerView = UIView()
  
  // HEADER VIEW
  lazy var headerView = UIView()
  
  let analyticBtn: UIButton
  
  // BODY VIEW
  lazy var bodyView = UIView()
  let callButton: CustomButton
  let smsButton: CustomButton
  
  // FOOTER VIEW
  lazy var footerView = UIView()
  
  init(homeView: UIView, analyticBtn: UIButton, callButton: CustomButton, smsButton: CustomButton) {
    self.homeView = homeView
    self.analyticBtn = analyticBtn
    self.callButton = callButton
    self.smsButton = smsButton
    
    // INIT PARENT VIEW STYLING
    self.styleHomeView()
    
    // INIT HEADER VIEW
    self.styleHeaderView()

    // INIT BODY VIEW
    self.styleBodyView()
    
    // INIT FOOTER VIEW
    self.styleFooterView()
  }
  
  // STYLE PARENT VIEW
  private func styleHomeView(){
    self.homeView.backgroundColor = THEME.COLOR.CVID_WHITE
    
    self.homeView.addSubview(self.innerView)
    
    self.innerView.translatesAutoresizingMaskIntoConstraints = false
    self.innerView.topAnchor.constraint(equalTo: self.homeView.topAnchor).isActive = true
    self.innerView.bottomAnchor.constraint(equalTo: self.homeView.bottomAnchor).isActive = true
    self.innerView.leadingAnchor.constraint(equalTo: self.homeView.leadingAnchor, constant: 20).isActive = true
    self.innerView.trailingAnchor.constraint(equalTo: self.homeView.trailingAnchor, constant: -20).isActive = true
  }
  
  // STYLE HEADER VIEW
  private func styleHeaderView() {
    // SET CONSTANT and HEIGHT OF HEADER VIEW
    self.innerView.addSubview(headerView)
    
    self.headerView.translatesAutoresizingMaskIntoConstraints = false
    self.headerView.topAnchor.constraint(
      equalTo: self.innerView.topAnchor,
      constant: AutoLayoutHelper.calculateMeasure(designMeasure: 51)
    ).isActive = true
    self.headerView.leadingAnchor.constraint(equalTo: self.innerView.leadingAnchor).isActive = true
    self.headerView.trailingAnchor.constraint(equalTo: self.innerView.trailingAnchor).isActive = true
    
    // STYLE HEADER COMPONENT
    self.styleConstantAnalyicBtn()
    
    let headerTitle = self.styleHeaderTitle()
    
    let headerBodyWrapperView = self.styleHeaderBodyWrapperView(headerTitle: headerTitle)
    
    self.styleHeaderBodyView(headerBodyWrapper: headerBodyWrapperView)
  }
    
  private func styleConstantAnalyicBtn() {
    // SET CONSTANT ANALYTIC BUTTON
    self.headerView.addSubview(self.analyticBtn)
    
    self.analyticBtn.translatesAutoresizingMaskIntoConstraints = false
    self.analyticBtn.setBackgroundImage(UIImage(named: "analytics"), for: .normal)
    self.analyticBtn.topAnchor.constraint(equalTo: self.headerView.topAnchor, constant: 0).isActive = true
    self.analyticBtn.leadingAnchor.constraint(equalTo: self.headerView.leadingAnchor).isActive = true
    self.analyticBtn.widthAnchor.constraint(equalToConstant: AutoLayoutHelper.calculateMeasure(designMeasure: 25)).isActive = true
    self.analyticBtn.heightAnchor.constraint(equalToConstant: AutoLayoutHelper.calculateMeasure(designMeasure: 25)).isActive = true
  }
  
  private func styleHeaderTitle() -> UILabel {
    // SET CONSTANT HEADER TITLE
    let headerTitle = CustomLabel(value: "Covid-19", color: THEME.COLOR.CVID_BLACK, size: AutoLayoutHelper.calculateMeasure(designMeasure: 40), fontName: "Poppins-SemiBold")

    self.headerView.addSubview(headerTitle)

    headerTitle.translatesAutoresizingMaskIntoConstraints = false
    headerTitle.topAnchor.constraint(
      equalTo: self.analyticBtn.bottomAnchor,
      constant: AutoLayoutHelper.calculateMeasure(designMeasure: 20)
    ).isActive = true
    headerTitle.leadingAnchor.constraint(equalTo: self.headerView.leadingAnchor).isActive = true
    
    return headerTitle
  }
  
  private func styleHeaderBodyWrapperView(headerTitle: UILabel) -> UIView {
    // SET CONSTANT CARD WRAPPER HEADER
    let cardHeaderWrapperView = UIView()
    
    self.headerView.addSubview(cardHeaderWrapperView)

    cardHeaderWrapperView.translatesAutoresizingMaskIntoConstraints = false
    cardHeaderWrapperView.topAnchor.constraint(
      equalTo: headerTitle.bottomAnchor,
      constant: AutoLayoutHelper.calculateMeasure(designMeasure: 20)
    ).isActive = true
    cardHeaderWrapperView.leadingAnchor.constraint(equalTo: self.headerView.leadingAnchor).isActive = true
    cardHeaderWrapperView.trailingAnchor.constraint(equalTo: self.headerView.trailingAnchor).isActive = true
    cardHeaderWrapperView.bottomAnchor.constraint(equalTo: self.headerView.bottomAnchor).isActive = true
    cardHeaderWrapperView.heightAnchor.constraint(
      equalToConstant: AutoLayoutHelper.calculateMeasure(designMeasure: 116)
    ).isActive = true
    
    return cardHeaderWrapperView
  }
  
  private func styleHeaderBodyView(headerBodyWrapper: UIView) {
    // SET CONSTANT CARD HEADER
    let cardHeaderView = GradientView(
      startColor: THEME.COLOR.CVID_WEAKER_PURPLE,
      endColor: THEME.COLOR.CVID_STRONGER_PURPLE,
      startPoint: CGPoint(x: 0.0, y: 0.5),
      endPoint: CGPoint(x:1.0, y:0.5)
    )
    
    headerBodyWrapper.addSubview(cardHeaderView)
    
    cardHeaderView.translatesAutoresizingMaskIntoConstraints = false
    cardHeaderView.heightAnchor.constraint(
      equalToConstant: AutoLayoutHelper.calculateMeasure(designMeasure: 104)
    ).isActive = true
    cardHeaderView.trailingAnchor.constraint(equalTo: headerBodyWrapper.trailingAnchor).isActive = true
    cardHeaderView.leadingAnchor.constraint(equalTo: headerBodyWrapper.leadingAnchor).isActive = true
    cardHeaderView.bottomAnchor.constraint(equalTo: headerBodyWrapper.bottomAnchor).isActive = true
    cardHeaderView.layer.masksToBounds = true
    cardHeaderView.layer.cornerRadius = 16

    // SET CONSTANT NURSE IMAGE
    let nurseImageView = UIImageView(image: UIImage(named: "nurse"))
    nurseImageView.contentMode = .scaleAspectFit

    headerBodyWrapper.addSubview(nurseImageView)

    nurseImageView.heightAnchor.constraint(
      equalToConstant: AutoLayoutHelper.calculateMeasure(designMeasure: 116)
    ).isActive = true
    nurseImageView.widthAnchor.constraint(
      equalToConstant: AutoLayoutHelper.calculateMeasure(designMeasure: 111.08)
    ).isActive = true

    nurseImageView.translatesAutoresizingMaskIntoConstraints = false
    nurseImageView.leadingAnchor.constraint(equalTo: headerBodyWrapper.leadingAnchor, constant: 10).isActive = true
    nurseImageView.bottomAnchor.constraint(equalTo: headerBodyWrapper.bottomAnchor).isActive = true
    
    // Do your own test auto layout
    let doyourTestLabel = CustomLabel(value: "Do your own test", color: THEME.COLOR.CVID_WHITE, size: AutoLayoutHelper.calculateMeasure(designMeasure: 18), fontName: "Poppins-ExtraBold")
    
    cardHeaderView.addSubview(doyourTestLabel)
    
    doyourTestLabel.translatesAutoresizingMaskIntoConstraints = false;
    doyourTestLabel.topAnchor.constraint(equalTo: cardHeaderView.topAnchor, constant: AutoLayoutHelper.calculateMeasure(designMeasure: 16)).isActive = true
    doyourTestLabel.leadingAnchor.constraint(equalTo: nurseImageView.trailingAnchor, constant: 20).isActive = true
    doyourTestLabel.trailingAnchor.constraint(equalTo: cardHeaderView.trailingAnchor).isActive = true

    // Instruction text
    let instrustionTestLabel = CustomLabel(value: "Follow the instructions to do your own test", color: THEME.COLOR.CVID_WHITE, size: AutoLayoutHelper.calculateMeasure(designMeasure: 14), fontName: "Poppins-Regular")

    cardHeaderView.addSubview(instrustionTestLabel)

    instrustionTestLabel.adjustsFontSizeToFitWidth = false
    instrustionTestLabel.numberOfLines = 2
    instrustionTestLabel.translatesAutoresizingMaskIntoConstraints = false;
    instrustionTestLabel.topAnchor.constraint(equalTo: doyourTestLabel.bottomAnchor, constant: 5).isActive = true
    instrustionTestLabel.leadingAnchor.constraint(equalTo: nurseImageView.trailingAnchor, constant: 20).isActive = true
    instrustionTestLabel.trailingAnchor.constraint(equalTo: cardHeaderView.trailingAnchor, constant: -10).isActive = true
  }
  
  private func styleBodyView() {
    // SETUP BODY
    self.innerView.addSubview(bodyView)

    self.bodyView.translatesAutoresizingMaskIntoConstraints = false
    self.bodyView.topAnchor.constraint(
      equalTo: self.headerView.bottomAnchor, constant:AutoLayoutHelper.calculateMeasure(designMeasure: 30)
    ).isActive = true
    self.bodyView.leadingAnchor.constraint(equalTo: self.innerView.leadingAnchor).isActive = true
    self.bodyView.trailingAnchor.constraint(equalTo: self.innerView.trailingAnchor).isActive = true
        
    // SETUP BODY COMPONENTS
    let titleBodyView = styleTitleBodyView()
    
    let contentBody = styleContentBodyView(titleBodyView: titleBodyView)
    
    styleBtnGroupBody(contentBodyText: contentBody)
  }
  
  private func styleTitleBodyView() -> UILabel {
    // Title Body View
    let titleBodyText = CustomLabel(value: "Are you feeling sick?", color: THEME.COLOR.CVID_BLACK, size: AutoLayoutHelper.calculateMeasure(designMeasure: 20), fontName: "Poppins-SemiBold")
    
    self.bodyView.addSubview(titleBodyText)
    
    titleBodyText.translatesAutoresizingMaskIntoConstraints = false
    titleBodyText.topAnchor.constraint(equalTo: self.bodyView.topAnchor).isActive = true
    titleBodyText.trailingAnchor.constraint(equalTo: self.bodyView.trailingAnchor).isActive = true
    titleBodyText.leadingAnchor.constraint(equalTo: self.bodyView.leadingAnchor).isActive = true
    
    return titleBodyText
  }
  
  private func styleContentBodyView(titleBodyView: UILabel) -> UILabel {
    // Content Body Text
    let contentBodyText = CustomLabel(value: "If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.", color: THEME.COLOR.CVID_MODERATE_PURPLE, size: AutoLayoutHelper.calculateMeasure(designMeasure: 16), fontName: "Poppins-Light")
    
    self.bodyView.addSubview(contentBodyText)
    
    contentBodyText.translatesAutoresizingMaskIntoConstraints = false
    contentBodyText.numberOfLines = 4
    contentBodyText.topAnchor.constraint(equalTo: titleBodyView.bottomAnchor, constant: AutoLayoutHelper.calculateMeasure(designMeasure: 20)).isActive = true
    contentBodyText.trailingAnchor.constraint(equalTo: self.bodyView.trailingAnchor).isActive = true
    contentBodyText.leadingAnchor.constraint(equalTo: self.bodyView.leadingAnchor).isActive = true

    return contentBodyText
  }
  
  private func styleBtnGroupBody(contentBodyText: UILabel) {
    // Setup CallNow Button
    let stackView = UIStackView()
    
    self.bodyView.addSubview(stackView)
    
    stackView.axis = .horizontal
    stackView.alignment = .fill
    stackView.distribution = .fillEqually
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.topAnchor.constraint(equalTo: contentBodyText.bottomAnchor, constant: AutoLayoutHelper.calculateMeasure(designMeasure: 30)).isActive = true
    stackView.leadingAnchor.constraint(equalTo: self.bodyView.leadingAnchor).isActive = true
    stackView.trailingAnchor.constraint(equalTo: self.bodyView.trailingAnchor).isActive = true
    stackView.bottomAnchor.constraint(equalTo: self.bodyView.bottomAnchor).isActive = true
    stackView.heightAnchor.constraint(equalToConstant: AutoLayoutHelper.calculateMeasure(designMeasure: 48)).isActive = true
    
    stackView.addArrangedSubview(callButton)
    stackView.addArrangedSubview(smsButton)
    stackView.spacing = 20
    
    callButton.layer.cornerRadius = 8
    smsButton.layer.cornerRadius = 8
  }
  
  private func styleFooterView() {
    // STYLE FOOTER
    self.innerView.addSubview(self.footerView)
        
    self.footerView.translatesAutoresizingMaskIntoConstraints = false
    self.footerView.topAnchor.constraint(equalTo: self.bodyView.bottomAnchor, constant: AutoLayoutHelper.calculateMeasure(designMeasure: 40)).isActive = true
    self.footerView.bottomAnchor.constraint(equalTo: self.innerView.bottomAnchor).isActive = true
    self.footerView.leadingAnchor.constraint(equalTo: self.innerView.leadingAnchor).isActive = true
    self.footerView.trailingAnchor.constraint(equalTo: self.innerView.trailingAnchor).isActive = true
    
    // FOOTER COMPONENTS
    let titleFooter = self.titleFooterView()
    
    // IMAGES STACK VIEW
    self.footerStackView(titleFooter: titleFooter)
  }
  
  private func titleFooterView() -> UILabel {
    // Content Body Text
    let titleFooter = CustomLabel(value: "Prevention", color: THEME.COLOR.CVID_BLACK, size: AutoLayoutHelper.calculateMeasure(designMeasure: 20), fontName: "Poppins-SemiBold")

    self.footerView.addSubview(titleFooter)

    titleFooter.translatesAutoresizingMaskIntoConstraints = false
    titleFooter.topAnchor.constraint(equalTo: self.footerView.topAnchor).isActive = true
    titleFooter.leadingAnchor.constraint(equalTo: self.footerView.leadingAnchor).isActive = true
    
    return titleFooter
  }
  
  private func footerStackView(titleFooter: UILabel) {
    // Images Stack View
    let imagesStackView = UIStackView()
    
    let stackContent1: UIView = {
      let innerView = UIView()
      innerView.translatesAutoresizingMaskIntoConstraints = false
      
      let imageView = UIImageView(image: UIImage(named: "socialdistancing"))
      imageView.contentMode = .scaleAspectFill
      
      innerView.addSubview(imageView)
      imageView.translatesAutoresizingMaskIntoConstraints = false
      imageView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor).isActive = true
      imageView.trailingAnchor.constraint(equalTo: innerView.trailingAnchor).isActive = true
      
      let title = CustomLabel(value: "Avoid close constract", color: THEME.COLOR.CVID_BLACK, size: AutoLayoutHelper.calculateMeasure(designMeasure: 14), fontName: "Poppins-Regular")
      innerView.addSubview(title)
      
      title.numberOfLines = 3
      title.textAlignment = .center
      title.translatesAutoresizingMaskIntoConstraints = false
      title.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
      title.leadingAnchor.constraint(equalTo: innerView.leadingAnchor).isActive = true
      title.trailingAnchor.constraint(equalTo: innerView.trailingAnchor).isActive = true
      
      return innerView
    }()
    
    let stackContent2: UIView = {
      let innerView = UIView()
      innerView.translatesAutoresizingMaskIntoConstraints = false
      
      let imageView = UIImageView(image: UIImage(named: "washhand"))
      imageView.contentMode = .scaleAspectFill
         
      innerView.addSubview(imageView)
      imageView.translatesAutoresizingMaskIntoConstraints = false
      imageView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor).isActive = true
      imageView.trailingAnchor.constraint(equalTo: innerView.trailingAnchor).isActive = true
      
      let title = CustomLabel(value: "Clean your hands often", color: THEME.COLOR.CVID_BLACK, size: AutoLayoutHelper.calculateMeasure(designMeasure: 14), fontName: "Poppins-Regular")
      innerView.addSubview(title)
       
      title.numberOfLines = 3
      title.textAlignment = .center
      title.translatesAutoresizingMaskIntoConstraints = false
      title.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
      title.leadingAnchor.constraint(equalTo: innerView.leadingAnchor).isActive = true
      title.trailingAnchor.constraint(equalTo: innerView.trailingAnchor).isActive = true
      
      return innerView
    }()
    
    let stackContent3: UIView = {
      let innerView = UIView()
      innerView.translatesAutoresizingMaskIntoConstraints = false
      
      let imageView = UIImageView(image: UIImage(named: "facemask"))
      imageView.contentMode = .scaleAspectFill
         
      innerView.addSubview(imageView)
      imageView.translatesAutoresizingMaskIntoConstraints = false
      imageView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor).isActive = true
      imageView.trailingAnchor.constraint(equalTo: innerView.trailingAnchor).isActive = true
      
      let title = CustomLabel(value: "Wear a facemask", color: THEME.COLOR.CVID_BLACK, size: AutoLayoutHelper.calculateMeasure(designMeasure: 14), fontName: "Poppins-Regular")
      innerView.addSubview(title)
       
      title.numberOfLines = 3
      title.textAlignment = .center
      title.translatesAutoresizingMaskIntoConstraints = false
      title.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
      title.leadingAnchor.constraint(equalTo: innerView.leadingAnchor).isActive = true
      title.trailingAnchor.constraint(equalTo: innerView.trailingAnchor).isActive = true
      
      return innerView
    }()
    
    self.footerView.addSubview(imagesStackView)
        
    imagesStackView.axis = .horizontal
    imagesStackView.alignment = .fill
    imagesStackView.distribution = .fillEqually
    imagesStackView.spacing = 25
    
    imagesStackView.translatesAutoresizingMaskIntoConstraints = false
    imagesStackView.topAnchor.constraint(equalTo: titleFooter.bottomAnchor, constant: AutoLayoutHelper.calculateMeasure(designMeasure: 35)).isActive = true
    imagesStackView.bottomAnchor.constraint(equalTo: self.footerView.bottomAnchor, constant: AutoLayoutHelper.calculateMeasure(designMeasure: -10)).isActive = true
    imagesStackView.leadingAnchor.constraint(equalTo: self.footerView.leadingAnchor).isActive = true
    imagesStackView.trailingAnchor.constraint(equalTo: self.footerView.trailingAnchor).isActive = true
    
    // ADD STACK VIEW
    imagesStackView.addArrangedSubview(stackContent1)
    imagesStackView.addArrangedSubview(stackContent2)
    imagesStackView.addArrangedSubview(stackContent3)
  }
}
