//
//  GameOverVC.swift
//  ScribbleGame
//
//  Created by Tejeshreddy on 3/28/24.
//

import UIKit

class GameOverVC: UIViewController {
    
    @IBOutlet weak var scoreLBL: UILabel!
    var score: Int = 0

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLBL.text = "\(score)"


        // Do any additional setup after loading the view.
    }
    func updateScoreLabel(newScore: Int) {
            score = newScore
            scoreLBL.text = "\(score)"
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
