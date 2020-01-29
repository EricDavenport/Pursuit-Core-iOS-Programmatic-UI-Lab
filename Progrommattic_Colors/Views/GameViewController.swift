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
    gameView.changeViewColor()
    answerSelector(sender)
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
//    case 1:
//      if ColorGuessingModel().isDominant(guess: UIColor.blue) == true {
//        print("correct")
//      } else {
//        print("incorrect")
//      }
//    case 2:
//      if ColorGuessingModel().isDominant(guess: UIColor.red) == true {
//        print("correct")
//      } else {
//        print("incorrect")
//      }
//    case 3:
//      if ColorGuessingModel().isDominant(guess: UIColor.green) == true {
//        print("correct")
//      } else {
//        print("incorrect")
//      }
//    default:
//      print("no color selected")
//
//    }
//  }
//
  
}
