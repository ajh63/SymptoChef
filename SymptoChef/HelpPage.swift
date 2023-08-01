//
//  HelpPage.swift
//  SymptoChef
//
//  Created by Ashley Hong on 2023/08/01.
//

import SwiftUI

struct HelpPage: View {
    var body: some View {
        VStack{
            Text("Help")
                .font(.title)
            Text("About This App")
                .padding(4.0)
            Text("As children, it’s a common experience for our parents to feed us various home recipes and liquid remedies to make us feel better, without really telling us what’s in them. Our app aims to provide easy and flavorful recipes dependent on the user’s inputted sickness symptoms (cough, sore throat, etc) so that users can easily search for and recreate these remedies. We chose this idea because we all love food and wanted to create something that could be useful for users at home, especially young adults living on their own or anyone else who has to take care of themselves when sick.")
                .padding(.leading, 3.0)
                
        }
    }
}

struct HelpPage_Previews: PreviewProvider {
    static var previews: some View {
        HelpPage()
    }
}
