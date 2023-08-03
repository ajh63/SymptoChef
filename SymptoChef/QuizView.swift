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
    @State var headache : Bool
    @State var nausea : Bool
    @State var heartburn : Bool
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundPink
                    .ignoresSafeArea()
                VStack {
                    Text("\nSymptoQuiz\n")
                        .font(.largeTitle)
                        .foregroundColor(.textPurple)
                        .bold()
                    Text("What are your current symptoms?\n")
                        .font(.title2)
                        .foregroundColor(.textPurple)
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
                        Toggle(isOn : $headache) {
                            HStack {
                                Spacer()
                                Text("Headache")
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
                                    .foregroundColor(.textPurple)
                                Spacer()
                            }
                        }
                        .toggleStyle(CheckboxToggleStyle())
                        .padding()
                        Toggle(isOn : $heartburn) {
                            HStack {
                                Spacer()
                                Text("Heartburn")
                                    .foregroundColor(.textPurple)
                                Spacer()
                            }
                        }
                        .toggleStyle(CheckboxToggleStyle())
                        .padding()
                    }
                    Spacer()
                    NavigationLink(destination : ResultsView().navigationBarBackButtonHidden(true)) {
                        Text("Submit")
                            .foregroundColor(.textPurple)
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
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(soreThroat : false, fever : false, headache : false, nausea : false, heartburn : false)
    }
}
