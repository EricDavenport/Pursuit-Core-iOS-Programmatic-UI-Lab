//
//  GameView.swift
//  Progrommattic_Colors
//
//  Created by Eric Davenport on 1/28/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import UIKit

class GameView: UIView {
//
//  private var score: Int {
//    didSet {
//    scoreString = "Score: \(score)"
//    }
//  }
  
  public lazy var colorSquare: UIView = {
    let view = UIView()
    view.backgroundColor = ColorGuessingModel().getNewColor()
    return view
  }()
  
  public lazy var titleLabel : UILabel = {
    let label = UILabel()
    label.backgroundColor = .brown
    label.textAlignment = .center
    label.text = "Colors 2" 
    return label
  }()
  
  public lazy var blueButton : UIButton = {
    let button = UIButton()
    button.setTitle("Blue", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .blue
    button.translatesAutoresizingMaskIntoConstraints = false
    button.tag = 0
    return button
  }()
  
  public lazy var redButton : UIButton = {
    let button = UIButton()
    button.setTitle("Red", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .red
    button.translatesAutoresizingMaskIntoConstraints = false
    button.tag = 1
    return button
  }()
  
  public lazy var greenButton : UIButton = {
    let button = UIButton()
    button.setTitle("Green", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .green
    button.translatesAutoresizingMaskIntoConstraints = false
    button.tag = 2
    return button
  }()
  
  public lazy var scoreLabel : UILabel = {
    let label = UILabel()
    label.backgroundColor = .orange
    label.textAlignment = .right
    label.text = "Score: "
    return label
  }()
  
  public lazy var stackView: UIStackView = {
    let stackView = UIStackView()
    return stackView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
    setupStack()
    setupDisplay()
    setUpScoreLabel()
    titleSetup()
  }
  
  public func changeViewColor() {
    colorSquare.backgroundColor = ColorGuessingModel().getNewColor()
  }

  private func titleSetup() {
    addSubview(titleLabel)
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
      titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
     // titleLabel.bottomAnchor.constraint(equalTo: colorSquare.topAnchor, constant: 30)
    
    ])
  }
  
  private func setupDisplay() {
    addSubview(colorSquare)
    
    colorSquare.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      colorSquare.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
      colorSquare.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
    
    colorSquare.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.75).isActive = true
    colorSquare.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true

  }
  
  private func setupStack() {
    stackView.addArrangedSubview(redButton)
    stackView.addArrangedSubview(blueButton)
    stackView.addArrangedSubview(greenButton)
    
    addSubview(stackView)
    
    stackView.axis = .horizontal
    stackView.distribution = .fillEqually
    stackView.alignment = .center
    stackView.spacing = 10

    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 75),
      stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100),
      stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
      stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35)
    ])
  }
  
  private func setUpScoreLabel() {
    addSubview(scoreLabel)
    
    scoreLabel.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
    scoreLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
    scoreLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
    scoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
    scoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
    ])
    
    
  }
  
}
