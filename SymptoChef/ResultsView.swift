//
//  ResultsView.swift
//  SymptoChef
//
//  Created by Sam Yavnilovitch on 8/2/23.
//

import SwiftUI

struct ResultsView: View {
    var symptoms : Array<String>
    var recipes = [Recipe(recipe: "Oatmeal", picture: "oatmeal", link: "https://www.cookforyourlife.org/recipes/oatmeal/", goodFor: ["Nausea", "Headache", "Sore throat", "Heartburn", "Fever"], badFor: []), Recipe(recipe: "Lemon Ginger Tea", picture: "tea", link: "https://www.acouplecooks.com/lemon-ginger-tea/", goodFor: ["Sore throat", "Nausea", "Headache", "Heartburn", "Fever"], badFor: [""]), Recipe(recipe: "Fried Rice with Ginger", picture: "fried_rice", link: "https://www.acouplecooks.com/fried-rice/", goodFor: ["Fever", "Headache", "Heartburn"], badFor: ["Nausea"]), Recipe(recipe: "Broccoli Stir Fry", picture: "broccoli", link: "https://www.acouplecooks.com/broccoli-stir-fry/", goodFor: ["Headache, Heartburn"], badFor: ["Nausea"])]
    var body: some View {
        let bestRecipe = getBestRecipe(symptoms: self.symptoms, recipes: self.recipes)
        NavigationStack {
            ZStack {
                Color.backgroundPink
                    .ignoresSafeArea()
                VStack {
                    Text("Results:")
                        .foregroundColor(.textPurple)
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    Link("\(bestRecipe.recipe)", destination: URL(string: "\(bestRecipe.link)")!)
                        .foregroundColor(.textPurple)
                        .font(.title2)
                    Image("\(bestRecipe.picture)")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("\n\n Click on the recipe name to get more information!")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPurple)
                    Spacer()
                }
                .padding()
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                            Text("Home")
                                .foregroundColor(.textPurple)
                        }
                        Spacer()
                        NavigationLink(destination: QuizView(soreThroat: false, fever: false, headache: false, nausea: false, heartburn: false).navigationBarBackButtonHidden(true)) {
                            Text("Quiz")
                                .foregroundColor(.textPurple)
                        }
                        Spacer()
                        NavigationLink(destination: ResearchView().navigationBarBackButtonHidden(true)) {
                            Text("Research")
                                .foregroundColor(.textPurple)
                        }
                        Spacer()
                        NavigationLink(destination: HelpPage().navigationBarBackButtonHidden(true)) {
                            Text("Help")
                                .foregroundColor(.textPurple)
                        }
                    }
                }
            }
        }
    }
}

func getBestRecipe(symptoms : Array<String>, recipes : Array<Recipe>) -> Recipe {
    var bestRecipe = recipes.first
    var bestCount = 0
    for recipe in recipes {
        var count = 0
        for symptom in symptoms {
            if recipe.goodFor(inputSymptom : symptom) {
                count += 1
            }
            if recipe.badFor(inputSymptom : symptom) {
                count = -10
            }
        }
        if (count > bestCount) {
            bestRecipe = recipe
            bestCount = count
        }
    }
    return bestRecipe!
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(symptoms: ["testing","testing","testing"])
    }
}
