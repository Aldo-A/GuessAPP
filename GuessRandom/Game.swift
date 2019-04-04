///Users/aldoalmeida/Library/Autosave Information/GuessRandom/GuessRandom/StartScreen.swift
//  Game.swift/Users/aldoalmeida/Library/Autosave Information/GuessRandom/GuessRandom/StartScreen.swift
//  GuessRandom
//
//  Created by Aldo Almeida on 4/4/19.
//  Copyright © 2019 Life X. All rights reserved.
//

import UIKit

class Game: UIViewController {

 
    @IBAction func backToStart(_ sender: UIButton) {
        self.performSegue(withIdentifier: "backToHome", sender: self)
    }
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

}
