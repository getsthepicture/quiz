//
//  ViewController.swift
//  Quiz
//
//  Created by Laurence Wingo on 2/13/18.
//  Copyright © 2018 Laurence Wingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet variables that got connected through interface builder
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    //end of IBOutlet variables that got connected through interface builder
    
    //example variable
    var doodleLable: UILabel!
    //end of example variable
    
    //model that should be broken out
    let questions: [String] = ["From what is cognac made?", "What is 7+7?", "What is the capital of Georgia?"]
    let answers: [String] = ["Grapes", "14", "Atlanta"]
    var currentQuestionIndex: Int = 0
    //end of model that should be broken out
    
    //IBAction functions that got connected through interface builder
    @IBAction func showAnswer(sender: AnyObject) {
        
    }
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        
        //when the showNextQuestionButton is tapped, increment currentQuestionIndex
        currentQuestionIndex+=1
        
        //if statement saying if the currentQuestionIndex is equal to the number of elements in the questions array, then reset the currentQuestionIndex integer to zero so that the list of questions can start over
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        //create a variable called question which is a string, and it is equal to a specific string element within the questions array.  This specific element from the array is set by the currentQuestionIndex integer.
        let question: String = questions[currentQuestionIndex]
        
        //set the text of questionLabel which is an instance of UILabel, equal to the string variable called question
        questionLabel.text = question
        
        //reset the text of answerLabel which is a UILabel, equal to a string of question marks to indicate that the answer is hidden.
        answerLabel.text = "???"
        
    }
    //end of IBAction functions that got connected through interface builder
    
    //example function
    func runTheJewels(){
        
    }
    //end of example function
    
    
    
    
}

