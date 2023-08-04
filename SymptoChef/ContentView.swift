//
//  ContentView.swift
//  SymptoChef
//
//  Created by Ashley Hong on 2023/07/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundPink
                    .ignoresSafeArea()
                VStack {
                    Image("chef_logo")
                        .position(x: 275, y: 125)
                    Text("Welcome to SymptoChef")
                        .font(.largeTitle)
                        .foregroundColor(.textPurple)
                        .bold()
                        .kerning(1.5)
                        .position(x: 175, y: 75)
                    NavigationLink(destination: QuizView(soreThroat: false, fever: false, headache: false, nausea: false, heartburn: false).navigationBarBackButtonHidden(true)) {
                        Text("Find a Recipe")
                            .font(.title)
                            .foregroundColor(.textPurple)
                            .position(x: 175, y: 120)
                    }
                    NavigationLink(destination: ResearchView().navigationBarBackButtonHidden(true)) {
                        Text("Research")
                            .font(.title2)
                            .foregroundColor(.textPurple)
                            .position(x: 175, y: 160)
                            .kerning(0.5)
                    }
                    NavigationLink(destination: HelpPage().navigationBarBackButtonHidden(true)) {
                        Text("Help")
                            .font(.title2)
                            .foregroundColor(.textPurple)
                            .position(x: 175, y: 80)
                            .kerning(0.5)
                    }
                    NavigationLink(destination: AboutView().navigationBarBackButtonHidden(true)) {
                        Text("Meet the Developers")
                            .font(.title2)
                            .foregroundColor(.textPurple)
                            .position(x: 175, y: 0)
                            .kerning(0.5)
                    }
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
