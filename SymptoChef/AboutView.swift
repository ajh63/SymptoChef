//
//  AboutView.swift
//  SymptoChef
//
//  Created by Al Yavnilovitch on 8/3/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundPink
                    .ignoresSafeArea()
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                        Text("Home")
                            .foregroundColor(.textPurple)
                    }
                    Spacer()
                    NavigationLink(destination: QuizView(soreThroat: false, fever: false, headache: false, nausea: false, heartburn: false)) {
                        Text("Quiz")
                            .foregroundColor(.textPurple)
                    }
                    Spacer()
                    NavigationLink(destination: HelpPage()) {
                        Text("Help")
                            .foregroundColor(.textPurple)
                    }
                    Spacer()
                    NavigationLink(destination: ResearchView()) {
                        Text("Research")
                            .foregroundColor(.textPurple)
                    }
                }
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
