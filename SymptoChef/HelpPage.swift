//
//  ContentView.swift
//  symptochef side
//
//  Created by Ashley Hong on 2023/08/02.
//

import SwiftUI

struct HelpPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundPink.edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                        VStack {
                            Text("Help")
                                .font(.largeTitle)
                                .fontWeight(.bold).padding(.vertical).foregroundColor(.textPurple)
                            Text("This page describes each feature on our app and helps the user navigate.")
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal).padding(.bottom).foregroundColor(.textPurple)
                            Text("About")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.bottom, 1.0).foregroundColor(.textPurple)
                            Text("As children, it’s a common experience for our parents to feed us various home recipes and remedies to make us feel better when sick, without really telling us what’s in them.")
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal).padding(.bottom).foregroundColor(.textPurple)
                            Text("Our app aims to provide easy and flavorful recipes dependent on the user’s inputted sickness symptoms (cough, sore throat, etc) so that users can easily search for and recreate these remedies.")
                                .padding(.horizontal).foregroundColor(.textPurple)
                        }
                        .padding()
                        Text("Home Page Navigation")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.top).foregroundColor(.textPurple)
                        Image("helpdescription")
                            .resizable().aspectRatio(contentMode: .fill)
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
                            NavigationLink(destination: ResearchView().navigationBarBackButtonHidden(true)) {
                                Text("Research")
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
    }
}

struct HelpPage_Previews: PreviewProvider {
    static var previews: some View {
        HelpPage()
    }
}
