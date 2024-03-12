//
//  Quadratic_ViewController.swift
//  Nidhi_Thakkar_MT_892055
//
//  Created by user237779 on 3/10/24.



import UIKit

class Quadratic_ViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBOutlet weak var TextC: UITextField!
    @IBOutlet weak var TextA: UITextField!
    @IBOutlet weak var TextB: UITextField!
    @IBOutlet weak var answer: UILabel!
    
    @IBOutlet weak var message: UILabel!
    func validateFields() -> Bool {
        
        // This guard function I learnt it from online vidoes and blogs
        
        guard let valueOfA = TextA.text, !valueOfA.isEmpty,
              let valueOfB = TextB.text, !valueOfB.isEmpty,
              let valueOfC = TextC.text, !valueOfC.isEmpty else {
            return false
        }
        return true
    }
    
    
    @IBAction func clear(_ sender: Any) {
        TextA.text = ""
        TextB.text = ""
        TextC.text = ""
        answer.text = ""
        message.text = ""
    }
    
    
    
    
    
    //In mathematics the solution can be represented by x1 and x2 and delta so I used that naming convictions.
    // Here delta is nothing but b^2 - 4ac value.
    
    //And I used a,b,c as name for variables of input equations A,B,C because in the quadratic equations there are represented by a,b,c values.
    
    //message is used for showing message related to solution whether exists or one real solution or 2 real solution.
    
    // answer is used for showing the value of X1 and X2.
    
    
    // as well as I am rounding off the answers to upto 3 decimal points using round function.
    
    @IBAction func calculate(_ sender: Any) {
       
        
    
            if validateFields() {
                if let a = Double(TextA.text!), let b = Double(TextB.text!), let c = Double(TextC.text!) {
                    if a == 0 {
                        message.text = "Value of A can not be 0"
                        answer.text = ""
                        message.textColor = UIColor.black
                    } else {
                        let delta = (b * b) - (4 * a * c)
                        
                        if delta > 0 {
                            let valueOfX1 = round(1000 * ((-b + sqrt(delta)) / (2 * a))) / 1000
                            let valueOfX2 = round(1000 * ((-b - sqrt(delta)) / (2 * a))) / 1000
                            answer.text =  "X1 is \(valueOfX1) X2 is \(valueOfX2)"
                            message.text = "X has two real solutions"
                            message.textColor = UIColor.black
                            answer.textColor = UIColor.black
                        } else if delta == 0 {
                            let valueOfX = -b / (2 * a)
                            answer.text =  "Solution for X is \(valueOfX)"
                            message.text = "X has only one real solution"
                            message.textColor = UIColor.black
                            answer.textColor = UIColor.black
                        } else {
                            answer.text = ""
                            message.text = "X has no real solution"
                            message.textColor = UIColor.black
                        }
                    }
                } else {
                    answer.text = "Please Enter Valid Numeric Values!"
                    answer.textColor = UIColor.red
                }
            } else {
                answer.text = "Please Enter Each Value!"
                answer.textColor = UIColor.red
            }
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            TextA.resignFirstResponder()
            TextB.resignFirstResponder()
            TextC.resignFirstResponder()
        }
    }

