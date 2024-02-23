//
//  ViewController.swift
//  ScribbleGame
//
//  Created by Vaishnavi Varaganti on 2/21/24.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var scribbleLAV: LottieAnimationView!{
        didSet{
            scribbleLAV.loopMode = .playOnce
            scribbleLAV.animationSpeed = 1.0
            scribbleLAV.play{[weak self] _ in
                          UIViewPropertyAnimator.runningPropertyAnimator(
                              withDuration: 1.0,
                              delay: 0.0,
                              options: [.curveEaseInOut]){
                              self?.scribbleLAV.alpha=0.0
                          }
                      }
                  }
              }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!)
    }


}

