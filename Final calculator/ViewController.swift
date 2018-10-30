//
//  ViewController.swift
//  Final calculator
//
//  Created by zach calcagno on 10/26/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterCurrentGrade: UILabel!
    @IBOutlet weak var currentGrade: UITextField!
    @IBOutlet var enterDesiredFinalGrade: UIView!
    @IBOutlet weak var DesiredFinalGrade: UITextField!
    @IBOutlet weak var enterPerTheFinalIsWorth: UILabel!
    @IBOutlet weak var perTheFinaLIWorth: UITextField!
    @IBOutlet weak var gradeNeeded: UILabel!
    @IBOutlet weak var askForHelpLable: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

        
    }
    @IBAction func whenButtonPressed(_ sender: Any) {
    let gradeC = Double(currentGrade.text!)!
    let gradeW = Double(DesiredFinalGrade.text!)!
    let weight = Double(perTheFinaLIWorth.text!)!
    let  decimalPercent = weight / 100.00
    let percentLeft = 1 - decimalPercent
    let gradeN = (gradeW - (percentLeft * gradeC)) / decimalPercent
        gradeNeeded.text = "\(gradeN)"
        
        
        
        if gradeN > 100 {
            view.backgroundColor = UIColor.red
        } else if gradeN < 100 {
           view.backgroundColor = UIColor.green
        }

        if gradeN > 100 {
            
            askForHelpLable.text = (" You Shold Ask Your Teacher For Extra Credit ")
        } else if gradeN < 100{
            askForHelpLable.text = (" ")
        }
        
}
    
    


}

