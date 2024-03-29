//
//  RegistrationVC.swift
//  ScribbleGame
//
//  Created by Venkata Sai Sandeep Nirujogi on 3/8/24.
//

import UIKit

class RegistrationVC: UIViewController {
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    @IBOutlet weak var signUpBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!).withAlphaComponent(0.5)
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        guard let firstName = firstNameTF.text, !firstName.isEmpty else {
            firstNameTF.placeholder =  "Please enter your first name."
            return
        }
        guard let firstName = self.firstNameTF.text, !firstName.isEmpty
        else{
            self.firstNameTF.layer.borderColor = UIColor.red.cgColor
            self.firstNameTF.layer.borderWidth = 1
            return
        }
        self.firstNameTF.layer.borderColor = UIColor.black.cgColor
        guard let lastName = self.lastNameTF.text, !lastName.isEmpty
        else{
            self.lastNameTF.layer.borderColor = UIColor.red.cgColor
            self.lastNameTF.layer.borderWidth = 1
            return
        }
        self.lastNameTF.layer.borderColor = UIColor.black.cgColor
        guard let email = self.emailTF.text, !email.isEmpty, isEmailValid(email)
        else{
            self.emailTF.layer.borderColor = UIColor.red.cgColor
            self.emailTF.layer.borderWidth = 1
            return
        }
        self.emailTF.layer.borderColor = UIColor.black.cgColor
        guard let password = self.passwordTF.text, !password.isEmpty
        else{
            self.passwordTF.layer.borderColor = UIColor.red.cgColor
            self.passwordTF.layer.borderWidth = 1
            return
        }
        self.passwordTF.layer.borderColor = UIColor.black.cgColor
        guard let confirmPassword = self.confirmPasswordTF.text, !confirmPassword.isEmpty, confirmPassword == password
        else{
            self.confirmPasswordTF.layer.borderColor = UIColor.red.cgColor
            self.confirmPasswordTF.layer.borderWidth = 1
            return
        }
        self.confirmPasswordTF.layer.borderColor = UIColor.black.cgColor
        self.performSegue(withIdentifier: "home", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch(segue.identifier){
        case "home" :
            guard let destinationVC = segue.destination as? HomePage
            else{
                return
            }
        default :
            break
        }
    }
    
    private func isEmailValid(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
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
