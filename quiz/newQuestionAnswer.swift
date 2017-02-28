//
//  newQuestionAnswer.swift
//  QA
//
//  Created by Alex Louzao on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit

class newQuestionAnswer: UIViewController{
    
    @IBOutlet var questionLabel: String!
    @IBOutlet var answerLabel: String!

    
    @IBAction func getQuestion(_ textField: UITextField){
        questionLabel = textField.text
        print("In new Question: \(questionLabel)")
    }
    
    @IBAction func getAnswer(_ textField: UITextField){
        answerLabel = textField.text
        print("In new Answer: \(answerLabel)")
    }
    
    @IBAction func setQandA(_ sender: UIButton){
        
        
        
    }
    
    
    
    
    
    
}
