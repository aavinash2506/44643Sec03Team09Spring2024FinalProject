//
//  RegistrationVC.swift
//  ScribbleGame
//
//  Created by Venkata Sai Sandeep Nirujogi on 3/8/24.
//

import UIKit

class RegistrationVC: UIViewController {
    
    @IBOutlet weak var firstLBL: UITextField!
    
    @IBOutlet weak var lastLBL: UITextField!
    
    
    @IBOutlet weak var userLBL: UITextField!
    
    
    @IBOutlet weak var PasswordLBL: UITextField!
    
    
    @IBOutlet weak var confirmLBL: UITextField!
    
    @IBOutlet weak var signupBT: UIButton!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!).withAlphaComponent(0.5)
    }
    @IBAction func firstname(_ sender: UITextField) {
    }
    
    
    @IBAction func lastname(_ sender: UITextField) {
    }
    
    
    @IBAction func user(_ sender: UITextField) {
    }
    
    @IBAction func password(_ sender: UITextField) {
    }
    
    @IBAction func confirm(_ sender: UITextField) {
    }
    
    @IBAction func signup(_ sender: UIButton) {
        guard let firstName = firstLBL.text, !firstName.isEmpty else {
            firstLBL.placeholder =  "Please enter your first name."
                    return
                }
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
