//
//  ViewController.swift
//  Calculator
//
//  Created by Tanishq Sharma on 09/02/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    // all the outlets for the view
    @IBOutlet weak var totalLabel: UILabel!
    @State var labelDisplay = "";
    var currentDigit = false;
    var currentDigitValue = 0;
    var totalSum = 0;
    var totalText = "";
    var lastOperator = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onePressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 1;
            totalText = totalText + " 1";
            totalLabel.text = totalText;
        }
    }

    
    @IBAction func twoPressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 2;
            totalText = totalText + " 2";
            totalLabel.text = totalText;
        }
    }
    
    @IBAction func threePressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 3;
            totalText = totalText + " 3";
            totalLabel.text = totalText;
        }
    }
    
    
    @IBAction func fourPressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 4;
            totalText = totalText + " 4";
            totalLabel.text = totalText;
        }
    }
    
    
    @IBAction func fivePressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 5;
            totalText = totalText + " 5";
            totalLabel.text = totalText;
        }
    }
    
    
    @IBAction func sixPressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 6;
            totalText = totalText + " 6";
            totalLabel.text = totalText;
        }
    }
    
    
    @IBAction func sevenPressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 7;
            totalText = totalText + " 7";
            totalLabel.text = totalText;
        }
    }
    
    
    @IBAction func eightPressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 8;
            totalText = totalText + " 8";
            totalLabel.text = totalText;
        }
    }
    
    @IBAction func ninePressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 9;
            totalText = totalText + " 9";
            totalLabel.text = totalText;
        }
    }
    
    @IBAction func zeroPressed(_ sender: Any) {
        if(currentDigit){
           print("Should be an operator")
        } else {
            currentDigit = true;
            currentDigitValue = 0;
            totalText = totalText + " 0";
            totalLabel.text = totalText;
        }
    }
    
    @IBAction func clearPressed(_ sender: Any) {
        totalLabel.text = ""
        currentDigit = false;
        currentDigitValue = 0;
        totalSum = 0;
        totalText = "";
    }
    
    @IBAction func multiplyPressed(_ sender: Any) {
        // if current is a digit, multiply total with currentValue, else warning
        if(currentDigit){
            totalSum = totalSum * currentDigitValue;
            currentDigit = false;
            totalText = totalText + " *";
            totalLabel.text = totalText;
            lastOperator = "multiply";
        } else {
            print("Should be a digit");
        }
    }
    
    @IBAction func plusPressed(_ sender: Any) {
        if(currentDigit){
            totalSum = totalSum + currentDigitValue;
            currentDigit = false;
            totalText = totalText + " +";
            totalLabel.text = totalText;
            lastOperator = "plus";
        } else {
            print("Should be a digit");
        }
    }
    
    @IBAction func minusPressed(_ sender: Any) {
        if(currentDigit){
            totalSum = totalSum - currentDigitValue;
            currentDigit = false;
            totalText = totalText + " -";
            totalLabel.text = totalText;
            lastOperator = "minus";
        } else {
            print("Should be a digit");
        }
    }
    
    @IBAction func totalPressed(_ sender: Any) {
        if(currentDigit){
            if(lastOperator == "plus"){
                totalSum = totalSum + currentDigitValue;
            } else if(lastOperator == "minus"){
                totalSum = totalSum - currentDigitValue;
            }  else if(lastOperator == "multiply"){
                totalSum = totalSum * currentDigitValue;
            } else if(lastOperator == "divide"){
                totalSum = totalSum / currentDigitValue;
            }
            totalLabel.text = String(totalSum);
        } else {
            print("Should be a digit");
        }
    }
    
    @IBAction func dividePressed(_ sender: Any) {
        if(currentDigit){
            totalSum = totalSum / currentDigitValue;
            currentDigit = false;
            totalText = totalText + " /";
            totalLabel.text = totalText;
            lastOperator = "divide";
        } else {
            print("Should be a digit");
        }
    }
}

