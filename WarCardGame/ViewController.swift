//
//  ViewController.swift
//  WarCardGame
//
//  Created by Marcy Nelson on 6/16/19.
//  Copyright © 2019 Aaron Clayton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var PlayerScoreLabel: UILabel!
    
    @IBOutlet weak var CPUScoreLabel: UILabel!
    
    var leftScore = 0;
    var rightScore = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func DealButton(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            PlayerScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
            rightScore += 1
            CPUScoreLabel.text = String(rightScore)
        }
        else{
            
        }
    }
    

}

