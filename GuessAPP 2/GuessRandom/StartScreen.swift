//
//  StartScreen.swift
//  GuessRandom
//
//  Created by Aldo Almeida on 4/4/19.
//  Copyright © 2019 Life X. All rights reserved.
//

import UIKit

class StartScreen: UIViewController {

    
    @IBAction func easyDiff(_ sender: UIButton) { // #1-10 max 100
        self.performSegue(withIdentifier: "easyScreen", sender: self)
    }
    
    @IBAction func medDiff(_ sender: UIButton) { //#1-20 max 100
        self.performSegue(withIdentifier: "mediumScreen", sender: self)
    }
    
    @IBAction func hardDiff(_ sender: UIButton) { //#1-30 max 100
        self.performSegue(withIdentifier: "hardScreen", sender: self)
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
