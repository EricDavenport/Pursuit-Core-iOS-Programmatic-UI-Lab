//
//  ViewController.swift
//  Progrommattic_Colors
//
//  Created by Eric Davenport on 1/28/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  private let gameView = GameView()
  
  override func loadView() {
    view = gameView
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemTeal
    navigationBar()
  }

  private func navigationBar() {
    navigationItem.title = "Colors pt. 2"
  }

}

