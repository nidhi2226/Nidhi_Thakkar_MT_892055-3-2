//
//  ViewController.swift
//  assignment
//
//  Created by user237779 on 1/21/24.
//

import UIKit

class Lab2_NTViewController: UIViewController {
    var screenNumber:Int = 0
    var incrementValue = 1
    @IBOutlet weak var textNumber: UITextField!
    
    @IBAction func buttonInc(_ sender: Any) {
        screenNumber = screenNumber + incrementValue
      textNumber.text = String(screenNumber)
    }
    
    @IBAction func buttonDec(_ sender: Any) {
        screenNumber = screenNumber - incrementValue
        textNumber.text = String(screenNumber)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        screenNumber = 0
        incrementValue = 1
        textNumber.text = String(screenNumber)
    }
    
    @IBAction func buttonStep2(_ sender: Any) {
        incrementValue = 2
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        screenNumber = Int(textNumber.text!) ?? 0
        // Do any additional setup after loading the view.
    }


}


