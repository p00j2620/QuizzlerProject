//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Variables
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var counter = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let question = allQuestions.list[counter]
        questionLabel.text = question.questionText
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
  
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        
    }
    
    
    func updateUI() {
      questionLabel.text = allQuestions.list[counter].questionText
    }
    

    func nextQuestion() {
        if counter >= allQuestions.list.count - 1 {
            print("You are out of questions")
        } else {
            counter += 1
        }
    }
    
    
    func checkAnswer() {
        if pickedAnswer == allQuestions.list[counter].answer {
            print("You're right!")
        } else {
            print("You're wrong")
        }
        nextQuestion()
        updateUI()
    }
    
    
    func startOver() {
       
    }
    

    
}
