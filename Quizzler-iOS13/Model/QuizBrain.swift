    //
    //  QuizBrain.swift
    //  Quizzler-iOS13
    //
    //  Created by Lê Vũ Nguyên on 2/24/20.
    //  Copyright © 2020 The App Brewery. All rights reserved.
    //

    import Foundation

    struct QuizBrain {
        let quizArray = [
            Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
            Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
            Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
            Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
            Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
            Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
            Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
            Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
            Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
            Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
            
        ]
        var numberQuestion = 0
        var numberRight = 0
        
        mutating func checkAnswer(_ userAnswer: String) -> Bool {
            if userAnswer == quizArray[numberQuestion].correctAnswer {
                numberRight += 1
                return true
            } else {
                return false
            }
        }
        
        func getQuestionText() -> String {
            return quizArray[numberQuestion].text
        }
        
        func getProcess() -> Float {
            return Float(numberQuestion) / Float(quizArray.count)
        }
        
        mutating func nextQuestion() {
            if numberQuestion + 1 < quizArray.count {
                numberQuestion += 1
            } else {
                numberQuestion = 0
                numberRight = 0
            }
        }
        func getScore() -> Int {
            return numberRight
        }
        func getAnswer1() -> String{
            return quizArray[numberQuestion].answer[0]
        }
        func getAnswer2() -> String{
            return quizArray[numberQuestion].answer[1]
        }
        func getAnswer3() -> String{
            return quizArray[numberQuestion].answer[2]
        }
    }
