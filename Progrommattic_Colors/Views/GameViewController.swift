//
//  ViewController.swift
//  Progrommattic_Colors
//
//  Created by Eric Davenport on 1/28/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
  
  private let gameView = GameView()
  
  override func loadView() {
    view = gameView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemTeal
    navigationBar()
    buttonPressed()
  }
  
  private func buttonPressed() {
    gameView.blueButton.addTarget(self, action: #selector(changeColor(_:)), for: .touchUpInside)
    gameView.redButton.addTarget(self, action: #selector(changeColor(_:)), for: .touchUpInside)
    gameView.greenButton.addTarget(self, action: #selector(changeColor(_:)), for: .touchUpInside)
  }
  
  private func navigationBar() {
    navigationItem.title = "Colors pt. 2"
  }
  
  @objc private func changeColor(_ sender: UIButton) {
    
    answerSelector(sender)
    gameView.changeViewColor()
  }
  
  func answerSelector(_ sender: UIButton) {
    if ColorGuessingModel().isDominant(guess: sender.backgroundColor!){
    print("correct")
      print(sender.backgroundColor)
    } else {
      print("incorrect")
      print(sender.backgroundColor)

    }
    
  }

//    switch sender.tag {
//    case 0:
//      print("blue pressed")
//      if ColorGuessingModel().isDominant(guess: sender.backgroundColor!) == true {
//        print("correct")
//        print(sender.backgroundColor)
//
//      } else {
//        print("incorrect")
//        print(sender.backgroundColor)
//
//      }
//    case 1:
//      print("red pressed")
//      if ColorGuessingModel().isDominant(guess: sender.backgroundColor!) == true {
//        print("correct")
//        print(sender.backgroundColor)
//
//      } else {
//        print("incorrect")
//        print(sender.backgroundColor)
//
//      }
//    case 2:
//      print("green pressed")
//      print(sender.backgroundColor)
//      if ColorGuessingModel().isDominant(guess: sender.backgroundColor!) == true {
//        print("correct")
//
//
//      } else {
//        print("incorrect")
//        print(sender.backgroundColor)
//
//      }
//    default:
//      print("no color selected")
//
//    }
   // gameView.changeViewColor()
  }


  

