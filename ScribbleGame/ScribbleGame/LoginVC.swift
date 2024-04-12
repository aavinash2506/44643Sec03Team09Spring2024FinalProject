//
//  ViewController.swift
//  ScribbleGame
//
//  Created by Vaishnavi Varaganti on 2/21/24.
//

import UIKit
import Lottie

class LoginVC: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginBTN: UIButton!
    
    @IBAction func login(_ sender: UIButton) {
        guard let username = self.usernameTF.text, !username.isEmpty,
                      let password = self.passwordTF.text, !password.isEmpty
                else {
                    return
                }
        
        if usernameTF.text == "" && passwordTF.text == "password" {
                   performSegue(withIdentifier: "segueToActionItems", sender: nil)
               } else {
                   // Show alert for invalid credentials
                   let alert = UIAlertController(title: "Invalid Credentials", message: "Please enter correct username and password.", preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   present(alert, animated: true, completion: nil)
               }
           }
        
                
//        guard let username = self.usernameTF.text, !username.isEmpty, LoginVC.isUsernameValid(username)
//        else{
//            self.usernameTF.layer.borderColor = UIColor.red.cgColor
//            self.usernameTF.layer.borderWidth = 1
//            return
//        }
//        self.usernameTF.layer.borderColor = UIColor.black.cgColor
//        guard let password = self.passwordTF.text, !password.isEmpty
//        else{
//            self.passwordTF.layer.borderColor = UIColor.red.cgColor
//            self.usernameTF.layer.borderWidth = 1
//            return
//        }
//        self.passwordTF.layer.borderColor = UIColor.black.cgColor
//        
//        Task{
//            do{
//                try await AuthenticationManager.shared.signIn(email: username, password: password)
//            }
//            catch{
//                print(error.localizedDescription)
//                return
//            }
//        }
//        
//        self.performSegue(withIdentifier: "home", sender: sender)
//    }
    
    @IBAction func signUp(_ sender: UIButton){
        self.performSegue(withIdentifier: "signup", sender: sender)
    }
    
    @IBOutlet weak var scribbleLAV: LottieAnimationView!{
        didSet{
            scribbleLAV.loopMode = .playOnce
            scribbleLAV.animationSpeed = 1.0
            scribbleLAV.play{[weak self] _ in
                UIViewPropertyAnimator.runningPropertyAnimator(
                    withDuration:1.0,
                    delay:0.0,
                    options: [.curveEaseInOut]){
                        self?.scribbleLAV.alpha=0.0
                    }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!).withAlphaComponent(0.5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch(segue.identifier){
        case "home" :
            guard let destinationVC = segue.destination as? HomePage
            else{
                return
            }
        case "signup" :
            guard let destinationVC = segue.destination as? RegistrationVC
            else{
                return
            }
        default :
            break
        }
    }
    
    static func isUsernameValid(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    func showAlert(message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    
}

