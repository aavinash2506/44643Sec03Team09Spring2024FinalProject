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
    
    @IBOutlet weak var LoginBTN: UIButton!
    
    @IBAction func LoginBTN(_ sender: UIButton) {
        
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
}

