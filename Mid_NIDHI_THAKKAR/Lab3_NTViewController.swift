//
//  ViewController.swift
//  assignment 2
//
//  Created by user237779 on 1/24/24.
//

import UIKit

class Lab3_NTViewController:
    UIViewController {
    
    @IBOutlet weak var FirstName: UITextField!
    
    
    @IBOutlet weak var LastName: UITextField!
    
    
    @IBOutlet weak var Country: UITextField!
    
    
    @IBOutlet weak var Age: UITextField!
    
    
    @IBOutlet weak var TextView: UITextView!
    
    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Add(_ sender: Any) {
        let fullName = FirstName.text! + " " + LastName.text!
        let userInfo = "FullName: \(fullName)\nCountry: \(Country.text!)\nAge: \(Age.text!)"
        TextView.text = userInfo
        
        }
    @IBAction func Submit(_ sender: Any) {
        if FirstName.text!.isEmpty ||
            LastName.text!.isEmpty ||
            Country.text!.isEmpty || Age.text!.isEmpty {
            Label.text = "Complete the missing info!"
               }
        else {
                   Label.text = "Successfully submitted!"
               }
                   Label.isHidden = false
           }
    
    @IBAction func clear(_ sender: Any) {
                FirstName.text = ""
                LastName.text = ""
                Country.text = ""
                Age.text = ""
                TextView.text = ""
                Label.isHidden=true

}
    
    }
    
    

    
    
    




