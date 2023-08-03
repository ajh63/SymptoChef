//
//  QuizView.swift
//  SymptoChef
//
//  Created by Sam Yavnilovitch on 8/2/23.
//

import SwiftUI

struct QuizView: View {
    @State var soreThroat : Bool
    @State var fever : Bool
    @State var stomachAche : Bool
    @State var nausea : Bool
    var body: some View {
        ZStack {
            Color.backgroundPink
                .ignoresSafeArea()
            VStack {
                Text("SymptoQuiz\n")
                    .font(.largeTitle)
                Text("What are your current symptoms?\n")
                    .font(.title2)
                Text("Check all that are applicable")
                    .foregroundColor(.gray)
                Spacer()
                VStack(alignment: .leading) {
                    Toggle(isOn : $soreThroat) {
                        HStack {
                            Spacer()
                            Text("Sore throat")
                                .foregroundColor(.textPurple)
                            Spacer()
                        }
                    }
                    .toggleStyle(CheckboxToggleStyle())
                    .padding()
                    Toggle(isOn : $fever) {
                        HStack {
                            Spacer()
                            Text("Fever")
                                .foregroundColor(.textPurple)
                            Spacer()
                        }
                    }
                    .toggleStyle(CheckboxToggleStyle())
                    .padding()
                    Toggle(isOn : $stomachAche) {
                        HStack {
                            Spacer()
                            Text("Stomachache")
                                .foregroundColor(.textPurple)
                            Spacer()
                        }
                    }
                    .toggleStyle(CheckboxToggleStyle())
                    .padding()
                    Toggle(isOn : $nausea) {
                        HStack {
                            Spacer()
                            Text("Nausea")
                            Spacer()
                        }
                    }
                    .toggleStyle(CheckboxToggleStyle())
                    .padding()
                }
                Spacer()
                NavigationLink(destination : ResultsView()) {
                    Text("Submit")
                }
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.bordered)
                .foregroundColor(.black)
                .backgroundStyle(.blue)
                .padding()
            }
            .padding()
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(soreThroat : false, fever : false, stomachAche : false, nausea : false)
    }
}
