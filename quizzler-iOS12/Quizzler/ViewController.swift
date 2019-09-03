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
        progressLabel.text = String(questionNumber + 1) + "/13"
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
        progressLabel.text = String(questionNumber + 1) + "/13"
        progressBar.frame.size.width = ( view.frame.size.width / 13) * CGFloat(questionNumber + 1 )
        
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
        if questionNumber < ( allQuestions.list.count - 1 )   {
        nextQuestion()
        updateUI()
        } else {
            let alert = UIAlertController(title: "End Quiz?", message: "Your quiz is finish do you want restart?",         preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Restart", style: UIAlertAction.Style.default, handler: { _ in
                self.startOver()
            }))
            alert.addAction(UIAlertAction(title: "Finish",
                                          style: UIAlertAction.Style.default,
                                          handler: {(_: UIAlertAction!) in
                                            //Sign out action
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    func startOver() {
        questionNumber  = 0
        totalScore = 0
        updateUI()
    }
    

    
}
