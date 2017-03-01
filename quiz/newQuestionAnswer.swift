/*
//  newQuestionAnswer.swift
//  QA
//
//  Created by Alex Louzao on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit


class newQuestionAnswer: UIViewController{
    
    var newQ: String!
    var newA: String!

    
    @IBAction func getQuestion(_ textField: UITextField){
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
    
    // Set the tag of each text field to different values
    // Find a way to clear the text field after press and after addition
    @IBAction func setQandA(_ sender: UIButton){
        print("Button Press Q: \(newQ)")
        print("Button Press A: \(newA)")
        if (newQ != nil && newA != nil) {
            // add question and answer to the arrays
            print("Adding new elements: \(newQ) and \(newA)")
            // send newQ and newA to ViewController
            // have a function there add them to the questions and answers array
            
            
            
            //questions += [newQ]
            //answers += [newA]
            //print("\(questions[3])")
            //have function to clear the text fields
        } else {
            // print an error message
            print("ERROR INPUT")
        }
    }
    
    func getNewQ()->String{
        return newQ
    }
    func getNewA()->String{
        return newA
    }
    
    
}*/
