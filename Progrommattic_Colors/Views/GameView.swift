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
  private var scoreString = "Score: "
  
  public lazy var colorSquare: UIView = {
    let view = UIView()
    view.backgroundColor = ColorGuessingModel().getNewColor()
    return view
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
    label.text = scoreString
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
  }
  
  public func changeViewColor() {
    colorSquare.backgroundColor = ColorGuessingModel().getNewColor()
  }
  
  private func setUpScoreLabel() {
    addSubview(scoreLabel)
    
    scoreLabel.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
    scoreLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
    scoreLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10),
    scoreLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
    scoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
    scoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10)
    ])
  }
  
  private func setupDisplay() {
    addSubview(colorSquare)
    
    colorSquare.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      colorSquare.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
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
    stackView.distribution = .equalSpacing
    stackView.alignment = .center
    stackView.spacing = 20
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: topAnchor, constant: 75),
      stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10),
      stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
      stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35)
    ])
    
  }
  

  
  
  
}
