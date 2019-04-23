//
//  QuestionResource.swift
//  REST
//
//  Created by Milan Bojic on 4/21/19.
//  Copyright © 2019 Milan Bojic. All rights reserved.
//

import Foundation

struct QuestionsResource: ApiResource {
    let methodPath = "/questions"
    
    func makeModel(serialization: Serialization) -> Question {
        return Question(serialization: serialization)
    }
}
