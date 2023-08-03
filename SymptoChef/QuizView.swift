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
    @State var symptoms = [String]()
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
                        .onChange(of: soreThroat) { value in
                            symptoms.append("sore throat")
                            print(value)
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
                        .onChange(of: fever) { value in
                            symptoms.append("fever")
                            print(value)
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
                        .onChange(of: headache) { value in
                            symptoms.append("headache")
                            print(value)
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
                        .onChange(of: nausea) { value in
                            symptoms.append("nausea")
                            print(value)
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
                        .onChange(of: heartburn) { value in
                            symptoms.append("heartburn")
                            print(value)
                        }
                        .toggleStyle(CheckboxToggleStyle())
                        .padding()
                    }
                    Spacer()
                    NavigationLink(destination : ResultsView(symptoms : self.symptoms).navigationBarBackButtonHidden(true)) {
                        Text("Submit")
                        .foregroundColor(.textPurple)
                    }
                    .buttonBorderShape(.roundedRectangle)
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
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
