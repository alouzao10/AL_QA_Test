//
//  ViewController.swift
//  quiz
//
//  Created by Alex Louzao on 2-28-17.
//  Last Edit: 3-1-17
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit

// Global variables to hold the values of the
// new question and answer the user provides.
// Also allows access to be later added to those arrays.
var q: String = ""
var a: String = ""

// Global array variables that contains the original set of 
// questions and answers. Allows access to the new question
// and answer so they can be added from within the button function.
var questions: [String] = ["From what is cognac is made?", "What is 7+7?",
                           "What is the capital of Vermont?"]
var answers: [String] = ["Grapes", "14", "Montpelier"]

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    // Made two UITextFields which will be used to grab
    // the strings the user provides for the new
    // question and answer to be later added.
    @IBOutlet var questionField: UITextField!
    @IBOutlet var answerField: UITextField!
    
    var currentQuestionIndex: Int = 0
    
    // Shows the next question in the array and will show new ones
    // as they are added by the user.
    @IBAction func showNextQuestion(_ sender: UIButton) {
        //print("Question NewQ = \(q)")
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
           currentQuestionIndex = 0
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    // Shows the answer that is connected to a specific question and will
    // show new ones as they are added by the user.
    @IBAction func showAnswer(_ sender: UIButton) {
        //print("Answer NewA = \(a)")
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Printing the original set of questions and answers
        // in the array before new additions are made to the arrays
        print("Original Questions:")
        for i in questions{
            print("\(i)")
        }
        print("Original Answers:")
        for i in answers{
            print("\(i)")
        }

    }
    
//==================================================================
    
    // Description: This button function refers to the button within the
    // add new question tab. Once the button is pressed it will
    // get the strings from the question and answer text fields, and
    // store them in the global variables q and a. It will check to see
    // if the text fields are blank to only allow a question and answer
    // if information is in the text fields. If both new values
    // contain strings then they will be added to the global
    // questions and answers arrays. It will also clear the text fields
    // to allow more input of new questions and answers.
    
    // Pre: Getting strings from two different text fields and check if they 
    // contain valid entries.
    // Post: Adds the new question and answer to their propper arrays to then
    // be sown within the quiz tab.
    @IBAction func setNewQandA(_ sender: UIButton){
        // Getting the new question and answer from 
        // their respected text fields which were created
        q = questionField.text!
        a = answerField.text!
        if q != "" && a != ""{
            // Made sure neither question or answer textfields were
            // blank and prints the new Q and A making sure they 
            // were recieved by the button press.
            print("Adding new elements: \(q) and \(a)")
            questions.append(q) // add new question to the array
            answers.append(a)   // add new answer to the array
            clearFields()
        } else {
            // If both text fields or one text field
            // is left blank an error message will appear 
            // in the console. The display is left unchanged
            // and nothing is added to either array.
            print("BAD INPUT")
        }
        // Loops to show the newly added question and answer
        // have been added to the questions and answers array
        for i in questions{
            print("Question: \(i)")
        }
        for i in answers{
            print("Answer: \(i)")
        }
    }
    
    // Description: Resets the text fields to blank after a valid entry
    // of a new question and answer entry.
    
    // Pre: The text fields contain the already entered question and answer
    // Post: The text fields will be cleared only showing the placeholder text
    func clearFields(){
        questionField.text = ""
        answerField.text = ""
    }
}
    




