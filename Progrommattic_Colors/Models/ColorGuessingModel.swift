//
//  ColorGuessingModel.swift
//  Progrommattic_Colors
//
//  Created by Eric Davenport on 1/28/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import Foundation
import UIKit

class ColorGuessingModel {
    
    public var currentColor: UIColor
    public var currentDominantRGBColor: UIColor
        
    func getNewColor() -> UIColor {
        let randomColorTuple = ColorGuessingModel.randColor()
        currentColor = randomColorTuple.color
        currentDominantRGBColor = randomColorTuple.dominantColor
        
        return currentColor
    }
    
    func isDominant(guess: UIColor) -> Bool {
        return currentDominantRGBColor == guess
    }
        
    static private func randColor() -> (color: UIColor, dominantColor: UIColor) {
        let redValue = CGFloat(drand48())
        let greenValue = CGFloat(drand48())
        let blueValue = CGFloat(drand48())
        let color = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        let dominantColor: UIColor
        if max(redValue, greenValue, blueValue) == redValue {
            dominantColor = UIColor.red
        } else if max(redValue, greenValue, blueValue) == greenValue {
            dominantColor = UIColor.green
        } else {
            dominantColor = UIColor.blue
            
        }
        return (color, dominantColor)
        
    }
    
    init() {
        let randomColorTuple = ColorGuessingModel.randColor()
        let currentColor = randomColorTuple.color
        let currentDominantColor = randomColorTuple.dominantColor
        
        self.currentColor = currentColor
        self.currentDominantRGBColor = currentDominantColor
    }
}
