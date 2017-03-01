//
//  ViewController.swift
//  quiz
//
//  Created by Alex Louzao on 2-28-17.
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit

var q: String = ""
var a: String = ""
var questions: [String] = ["From what is cognac is made?", "What is 7+7?",
                           "What is the capital of Vermont?"]
var answers: [String] = ["Grapes", "14", "Montpelier"]

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    @IBOutlet var questionField: UITextField!
    @IBOutlet var answerField: UITextField!
    
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        //print("Question NewQ = \(q)")
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
           currentQuestionIndex = 0
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        //print("Answer NewA = \(a)")
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Questions:")
        for i in questions{
            print("\(i)")
        }
    }
    
    
//==================================================================
    
    @IBAction func setNewQandA(_ sender: UIButton){
        q = questionField.text!
        a = answerField.text!
        if q != "" && a != ""{
            // add question and answer to the arrays
            print("Adding new elements: \(q) and \(a)")
            questions.append(q) // addNewQ
            answers.append(a)   // addNewA
            clearFields()
        } else {
            print("BAD INPUT")
        }
        for i in questions{
            print("Question: \(i)")
        }
        for i in answers{
            print("Answer: \(i)")
        }
        // call function to clear text fields
    }
    
    func clearFields(){
        questionField.text = ""
        answerField.text = ""
    }

}
    




