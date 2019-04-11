//
//  hardGame.swift
//  GuessRandom
//
//  Created by Aldo Almeida and Paola Camacho on 4/4/19.
//  Copyright © 2019 Life X. All rights reserved.
//

import UIKit

class hardGame: UIViewController {
    
    @IBOutlet weak var min: UILabel!
    @IBOutlet weak var max: UILabel!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var attemptsLeft: UILabel!
    @IBOutlet weak var decide: UILabel!

    
    
    var minimum:Int=0
    var maxmimum:Int=10
    var specialNumber:Int=0
    var numOfGuesses=25

    
    @IBAction func backToStart(sender: UIButton) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calculateNumbers()
    }
    
    @IBAction func getGuess(_ sender: UIButton) {
        var guess=Int(input.text!)
        
        if(guess==specialNumber)
        {
            decide.text="You Win!"
            sender.isEnabled=false
        }
        else
        {
            if(numOfGuesses>0)
            {
                numOfGuesses=numOfGuesses-1
                attemptsLeft.text=String(numOfGuesses)
            }
                
            else
            {
                decide.text="You lose"
                sender.isEnabled=false
            }
        }
        
        
        
    }
    
    private func calculateNumbers()
    {
        minimum=Int.random(in: 0..<70)
        maxmimum=minimum+30
        specialNumber=Int.random(in: minimum..<maxmimum)
        min.text=String(minimum)
        max.text=String(maxmimum)
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
