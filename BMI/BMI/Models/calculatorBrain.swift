//
//  File.swift
//  BMI
//
//  Created by Emir on 13.10.2022.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.02352941176, green: 0.1568627451, blue: 0.2392156863, alpha: 1)
    }
    
    func getImage() -> UIImage {
        return bmi?.image ?? UIImage(imageLiteralResourceName: "icon")
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        let imageArray = [ UIImage(imageLiteralResourceName: "image1"), UIImage(imageLiteralResourceName: "image2"), UIImage(imageLiteralResourceName: "image3"), UIImage(imageLiteralResourceName: "image4"), UIImage(imageLiteralResourceName: "image5")]
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!!", color: #colorLiteral(red: 0.1176470588, green: 0.6039215686, blue: 0.8392156863, alpha: 1), image: imageArray[0])
        } else if bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!", color: #colorLiteral(red: 0.1882352941, green: 0.6392156863, blue: 0.2823529412, alpha: 1), image: imageArray[1])
        } else if bmiValue < 30 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.9647058824, green: 0.7921568627, blue: 0.2078431373, alpha: 1), image: imageArray[2])
        } else if bmiValue < 40 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9647058824, green: 0.537254902, blue: 0.1254901961, alpha: 1), image: imageArray[3])
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!!", color: #colorLiteral(red: 0.7254901961, green: 0.1647058824, blue: 0.1882352941, alpha: 1), image: imageArray[4])
        }
    }
}
