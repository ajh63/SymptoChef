//
//  ResearchView.swift
//  SymptoChef
//
//  Created by Sam Yavnilovitch on 8/3/23.
//

import SwiftUI

struct ResearchView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundPink
                    .ignoresSafeArea()
                VStack {
                    Text("Research")
                        .foregroundColor(.textPurple)
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    Link("Why Rest is Important", destination: URL(string: "https://www.primamedicine.com/blog/why-rest-is-important-when-you-have-the-flu")!)
                    Image("rest")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Link("Drink Plenty of Fluids", destination: URL(string: "https://www.washingtonpost.com/lifestyle/2021/11/05/what-do-doctors-mean-when-they-say-drink-plenty-fluids/")!)
                    Image("drink")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Link("How to Feel Better", destination: URL(string: "https://www.upstate.edu/whatsup/2020/0515-how-to-feel-better-tips-for-self-care-when-sick.php")!)
                    Image("feel_better")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
            }
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
                    NavigationLink(destination: HelpPage().navigationBarBackButtonHidden(true)) {
                        Text("Help")
                            .foregroundColor(.textPurple)
                    }
                    Spacer()
                    NavigationLink(destination: AboutView().navigationBarBackButtonHidden(true)) {
                        Text("About")
                            .foregroundColor(.textPurple)
                    }
                }
            }
        }
    }
}

struct ResearchView_Previews: PreviewProvider {
    static var previews: some View {
        ResearchView()
    }
}
