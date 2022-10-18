//
//  ViewController.swift
//  Currency Converter
//
//  Created by user226698 on 10/18/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var USDValue: UITextField!
    
    @IBOutlet weak var CADValue: UITextField!
    
    @IBAction func ConvertValue() {
        let USDEnteredValue = Double( USDValue.text! ) ?? 0.0
        let CADEnteredValue = Double( CADValue.text! ) ?? 0.0
        
        if USDEnteredValue != 0.0 && CADEnteredValue == 0.0{
            let USDToCAD = 1.375975
            let ConvertedValue = USDEnteredValue * USDToCAD
            CADValue.text = "\(ConvertedValue)"
            
        }
        
        if USDEnteredValue == 0.0 && CADEnteredValue != 0.0 {
            let CADToUSD = 0.7518
            let ConvertedValue = CADEnteredValue * CADToUSD
            USDValue.text = "\(ConvertedValue)"
        }
        
        if USDEnteredValue == 0.0 && CADEnteredValue == 0.0 {
            let alert = UIAlertController(title: "Empty Field", message:"Please enter a value to convert", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel)
            alert.addAction(action)
            present(alert, animated: true)
            
        }
    }
    
    @IBAction func ResetValue() {
        CADValue.text = ""
        USDValue.text = ""
    }
    
    override func viewDidLoad() {
        let tapGesture =  UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
       view.addGestureRecognizer(tapGesture)
    }
    
	
}

