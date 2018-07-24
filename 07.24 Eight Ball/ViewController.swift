//
//  ViewController.swift
//  07.24 Eight Ball
//
//  Created by Linh Bouniol on 7/24/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let answers = ["It is certain.",
                           "It is decidedly so.",
                           "Without a doubt.",
                           "Yes - definitely.",
                           "You may rely on it.",
                           "As I see it, yes.",
                           "Most likely.",
                           "Outlook good.",
                           "Yes.",
                           "Signs point to yes.",
                           "Reply hazy, try again",
                           "Ask again later.",
                           "Better not tell you now.",
                           "Cannot predict now.",
                           "Concentrate and ask again.",
                           "Don't count on it.",
                           "My reply is no.",
                           "My sources say no",
                           "Outlook not so good.",
                           "Very doubtful.",
                           ]
    
    @IBOutlet var answerLabel: UILabel!
    
    @IBAction func flipEightBall(_ sender: Any) {
//        // Generate a random index
//        let index = Int(arc4random_uniform(UInt32(answers.count))) // could repeat the same answer
//
//        let answer = answers[index]
//        answerLabel.text = answer
        
        answerLabel.text = generateAnswer()
    }
    
    private var lastAnswer = ""
    
    private func generateAnswer() -> String {   // if answer generated is the same as last answer, it will generate another one
        
        var result = ""
        repeat {
            // Generate a random index
            let index = Int(arc4random_uniform(UInt32(answers.count)))
            result = answers[index]
        } while result == lastAnswer
        
        lastAnswer = result
        
        return result
        
        
//        // Generate a random index
//        let index = Int(arc4random_uniform(UInt32(answers.count)))
//
//        let answer = answers[index]
//        return answer

    }
    


}

