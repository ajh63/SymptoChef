//
//  Recipe.swift
//  SymptoChef
//
//  Created by Al Yavnilovitch on 8/3/23.
//

import Foundation
import SwiftUI
class Recipe : Identifiable {
    var recipe = ""
    var picture = ""
    var link = ""
    var goodFor = [String]()
    var badFor = [String]()
    init(recipe: String = "", picture: String = "", link: String = "", goodFor: Array<String> = [], badFor: Array<String> = []) {
        self.recipe = recipe
        self.picture = picture
        self.link = link
        self.goodFor = goodFor
        self.badFor = badFor
    }
    
    func goodFor(inputSymptom : String) -> Bool {
        var answer = false
        for symptom in self.goodFor {
            if (symptom == inputSymptom) {
                answer = true
            }
        }
        return answer
    }
    
    func badFor(inputSymptom: String) -> Bool {
        var answer = false
        for symptom in self.badFor {
            if (symptom == inputSymptom) {
                answer = true
            }
        }
        return answer
    }
}
