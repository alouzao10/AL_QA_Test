//
//  ViewController.swift
//  quiz
//
//  Created by Alex Louzao on 2-28-17.
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    var q: String! = ""
    var a: String! = ""
    
    @IBOutlet var questionField: UITextField!
    @IBOutlet var answerField: UITextField!
    
    var questions: [String] = ["From what is cognac is made?", "What is 7+7?",
                               "What is the capital of Vermont?"]
    
    var answers: [String] = ["Grapes", "14", "Montpelier"]
    
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        print("Question NewQ = \(q)")
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
           currentQuestionIndex = 0
        }
        for i in questions{
            print("In Next Question: \(i)")
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        print("Answer NewA = \(a)")
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        //super.viewDidLoad()
        print("Original Questions:")
        for i in questions{
            print("\(i)")
        }
        q = "STUPID"
        a = "MONKEY"
        //newQ = retQ()
        //newA = retA
        questions.append(q)
        answers.append(a)
        print("View Load NewQ = \(q)")
        //questionLabel.text = questions[currentQuestionIndex]
    }
    
    
//==================================================================
    
    @IBAction func setNewQandA(_ sender: UIButton){
        q = questionField.text!
        a = answerField.text!
        if q != nil && a != nil{
            // add question and answer to the arrays
            print("Adding new elements: \(q) and \(a)")
            questions.append(q) // addNewQ
            answers.append(a)   // addNewA
            //showNextQuestion(sender)
            // have function to clear the text fields
        } else {
            print("BAD INPUT")
        }
        for i in questions{
            print("Question: \(i)")
        }
        for i in answers{
            print("Answer: \(i)")
        }
        //viewDidLoad()
        
    }
    

    
    
    
    
    
    
    
    //var otherView = newQuestionAnswer()
    
    /*@IBAction func getQuestion(_ textField: UITextField){
        newQ = textField.text
        if newQ == ""{
            newQ = nil
        }
        print("In new Question ViewCon: \(newQ)")
    }
    
    @IBAction func getAnswer(_ textField: UITextField){
        newA = textField.text
        if newA == ""{
            newA = nil
        }
        print("In new Answer ViewCon: \(newA)")
    }
    func addQ(){
        questions.append(newQ)
    }
    func addA(){
        answers.append(newA)
    }
    
    // Set the tag of each text field to different values
    // Find a way to clear the text field after press and after addition
    
    
    // let newQuestion set the new question and answer
    // have simple function here to append the new values
    
    @IBAction func setQandANew(_ sender: UIButton){
        //newQ = otherView.newQ
        //newA = otherView.newA
        print("Button Press Q: \(newQ)")
        print("Button Press A: \(newA)")
        if (newQ != nil && newA != nil) {
            // add question and answer to the arrays
            print("Adding new elements: \(newQ) and \(newA)")
            addQ()
            addA()
            // have function to clear the text fields
        }
        for i in questions{
            print("Question: \(i)")
        }
        for i in answers{
            print("Answer: \(i)")
        }
        viewDidLoad()
    }*/
    
    
    
    
    

}
    




