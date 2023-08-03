//
//  MeetTheDevelopers.swift
//  symptochef side
//
//  Created by Ashley Hong on 2023/08/03.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack{
            Color.backgroundPink.edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack{
                    Text("Meet The Developers")
                        .font(.title)
                        .fontWeight(.heavy).foregroundColor(.textPurple)
                        .padding(.top)
                    //Ashley Jisue
                    HStack{
                        Image("ajPic").resizable().aspectRatio(contentMode: .fit).frame(height: 250).cornerRadius(70)
                        VStack{
                            Text("Ashley Jisue Hong").font(.headline).fontWeight(.heavy).foregroundColor(.textPurple).padding(.trailing, 21.0).padding(.bottom, -1.0)
                            Text("Nice to meet you! My name is Ashley Jisue Hong and I'm a rising highschool junior from Honolulu, HI. My favorite food to eat when sick is kimchi and chicken jook (Korean rice porridge).").font(.body).foregroundColor(.textPurple).padding(.horizontal, 3.0)
                        }
                    }.padding()
                    
                    //Jamie
                    HStack{
                        Image("jamiePic").resizable().aspectRatio(contentMode: .fit).frame(height: 250).cornerRadius(70)
                        VStack{
                            Text("Jamie Scanlan").font(.title3).fontWeight(.bold).foregroundColor(.textPurple).padding(.trailing, 21.0).padding(.bottom, -1.0)
                            Text("Hi! My name is Jamie and I'm a rising senior in highschool from San Francisco, CA. My favorite food to eat when sick is a Korean rice porridge called jook.").font(.body).foregroundColor(.textPurple).padding(.horizontal, 3.0)
                        }
                    }.padding()
                    
                    //Sam
                    HStack{
                        Image("samPic").resizable().aspectRatio(contentMode: .fit).frame(height: 250).cornerRadius(70)
                        VStack{
                            Text("Sam Yavnilovitch").font(.title3).fontWeight(.bold).foregroundColor(.textPurple).padding(.trailing, 21.0).padding(.bottom, -1.0)
                            Text("Hi, I'm Sam! I am so happy you've decided to visit our SymptoChef application, and I hope you've enjoyed your stay. My favorite food to eat when sick is probably the vegetable soup my mom makes!").font(.body).foregroundColor(.textPurple).padding(.horizontal, 3.0)
                        }
                    }.padding()
                    
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
