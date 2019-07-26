//
//  ScoresViewController.swift
//  QueizGame
//
//  Created by Mac on 7/7/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ScoresViewController: UIViewController {

    
    @IBOutlet weak var scores: UILabel!
    
    var movingScores:String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

      scores.text =  movingScores
    }
    


}
