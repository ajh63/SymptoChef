//
//  ContentView.swift
//  symptochef side
//
//  Created by Ashley Hong on 2023/08/02.
//

import SwiftUI

struct HelpPage: View {
    var body: some View {
        ZStack {
            Color.backgroundPink.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Help")
                    .font(.largeTitle)
                    .fontWeight(.bold).padding(.bottom).foregroundColor(.textPurple)
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
                Text("Home Page Navigation")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.top).foregroundColor(.textPurple)
                Image("helpdescription")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                
                
            }
            .padding()
        }
    }
}

struct HelpPage_Previews: PreviewProvider {
    static var previews: some View {
        HelpPage()
    }
}
