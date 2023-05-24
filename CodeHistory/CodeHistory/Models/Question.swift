//
//  Question.swift
//  CodeHistory
//
//  Created by Rodrigo Garcia Olvera on 05/01/23.
//

import Foundation

struct Question: Hashable {// add hashable conformance
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: ["Steve Jobs",
                                "Linus Torvalds",
                                "Bill Gates",
                                "Tim Berners-Lee"],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers: ["Simula",
                                  "Python",
                                  "Swift",
                                  "C"],
                 correctAnswerIndex: 0)
    ]
}
