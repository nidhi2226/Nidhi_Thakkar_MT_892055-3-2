//
//  Canada_ViewController.swift
//  Nidhi_Thakkar_MT_892055
//
//  Created by user237779 on 3/8/24.
//
import UIKit

class Canada_ViewController: UIViewController {

    @IBOutlet weak var CanadaFlagView: UIImageView!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var messagelabel: UILabel!
     var displayedImage = "Canada"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messagelabel.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func findMyCityField(_ sender: UIButton) {
        if cityText.text?.lowercased() == "toronto"{
            displayedImage = "Toronto"
            messagelabel.text = ""
        }
        else if cityText.text?.lowercased() == "halifax"{
            displayedImage = "Halifax"
            messagelabel.text = ""
        }
        else if cityText.text?.lowercased() == "calgary"{
            displayedImage = "Calgary"
            messagelabel.text = ""
        }
        else if cityText.text?.lowercased() == "montreal"{
            displayedImage = "Montreal"
            messagelabel.text = ""
        }
        else if cityText.text?.lowercased() == "vancouver"{
            displayedImage = "Vancouver"
            messagelabel.text = ""
        }
        else if cityText.text?.lowercased() == "winnipeg"{
            displayedImage = "Winnipeg"
            messagelabel.text = ""
        }
        else{
            messagelabel.text = "City Not Found!"
            displayedImage = "Error"
        }
        CanadaFlagView.image = UIImage(named: displayedImage)
        messagelabel.isHidden = false
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
     }
    */

}



    

            
    
