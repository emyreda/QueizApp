//
//  ViewController.swift
//  QueizGame
//
//  Created by Mac on 7/7/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        
        @IBOutlet weak var laquestion: UILabel!
        @IBOutlet weak var result: UILabel!
    
    
    
    
    let Questions = ["Favorite pet?" , "Favorite color?" ,"Where was I born?"]
        let Answers = [["Cat","Dog","Birds"] , ["Green","Blue","White"] , ["Egypt","China","Luxor"]]
        
        //Variables
        var currentQuestion = 0
        var rightAnswerPlacement = 0
        var points = 0
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
        }
        
        
        
        @IBAction func buaction(_ sender: Any) {
            
            if((sender as AnyObject).tag == Int(rightAnswerPlacement)){
                
                print("RIGHT!")
                
                result.text = "Right"
                       points+=1
                
                
                
            }else{
                
                print("WRONG!!!!!")
                result.text = "Wrong"

               
            }
            
            // if exceeds length of array
            if (currentQuestion != Questions.count){
                
                newQuestion()
            }
                
            else{
                
                
                
            performSegue(withIdentifier: "showScores", sender: self)
                
            }
            
            
        }
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if let distenation = segue.destination as? ScoresViewController{
            
                distenation.movingScores = "\(points)/3"
            }
            
    }
            
            
    
        override func viewDidAppear(_ animated: Bool) {
            
            
            newQuestion()
            
            
        }
        
        // function for displaying new question
        
        func newQuestion(){
            
            
            laquestion.text = Questions[currentQuestion]
            rightAnswerPlacement = Int(arc4random_uniform(3)+1)
            
            //createButton
            
            var button = UIButton()
            
            var x = 1
            for i in 1...3
            {
                
                //createButton
                
                button = view.viewWithTag(i) as! UIButton
                
                if(i==Int(rightAnswerPlacement)){
                    
                    button.setTitle(Answers[currentQuestion][0], for: .normal)
                    
                }
                else{
                    
                    button.setTitle(Answers[currentQuestion][x], for: .normal)
                    x = 2
                }
                
                
            }
            
            currentQuestion += 1
            
        }
            
    
        
}//

