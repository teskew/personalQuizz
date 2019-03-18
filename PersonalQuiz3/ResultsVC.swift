//
//  ResultsVC.swift
//  PersonalQuiz3
//
//  Created by student20 on 3/13/19.
//  Copyright © 2019 student20. All rights reserved.
//

import UIKit

class ResultsVC: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var reulltDefinition: UILabel!
    
    
    
    
    var responses:[Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    calculatePersonalityResult()
    navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response]
                ?? 0) + 1
        
        }
    
      let frequentAnswersSorted =  frequencyOfAnswers.sorted (by:
        {(pair1, pair2) -> Bool in
           return pair1.value > pair2.value
       })
        let mostCommonAnswer = frequentAnswersSorted.first!.key

        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        
        reulltDefinition.text = mostCommonAnswer.definition
    
    
}


}
