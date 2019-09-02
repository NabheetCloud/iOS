//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var totalScore : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstQuestion = allQuestions.list[questionNumber]
        questionLabel.text = firstQuestion.questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }else{
            pickedAnswer = false
        }
        checkAnswer()
        
    }
    
    
    func updateUI() {
      questionLabel.text = allQuestions.list[questionNumber].questionText
    scoreLabel.text = String(totalScore)
        progressLabel.text = String(questionNumber) + "/13"
        prog
        
    }
    

    func nextQuestion() {
        questionNumber = questionNumber + 1
    }
    
    
    func checkAnswer() {
      
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            totalScore = totalScore + 10
        } else{
            totalScore = totalScore - 5
        }
        if questionNumber < 12 {
        nextQuestion()
        updateUI()
        } else {
            
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
