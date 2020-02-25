//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Lê Vũ Nguyên on 2/22/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: [String]
    var correctAnswer: String
    init(q: String,a: [String],correctAnswer: String)
    {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
