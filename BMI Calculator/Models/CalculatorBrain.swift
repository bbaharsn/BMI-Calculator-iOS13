//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bahar Şen on 1.12.2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

 
import UIKit
struct CalculatorBrain{
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(weight: Float, height: Float){
        let bmiValue = weight / pow(height,2)
        //bmi = BMI(value: bmiValue, advice: "your result", color: UIColor.red)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies ", color: UIColor.blue)
        }else if  bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a piddle", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red )
        }
    }
        func getBMIValue() -> String{
            let bmiTO1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
            return bmiTO1DecimalPlace
        }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice "
            }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white 
    }
        
        
    
}

