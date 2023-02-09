//
//  walkthrouSlide.swift
//  Slider
//
//  Created by Aamer Essa on 09/02/2023.
//

import SwiftUI

struct walkthrouSlide :View {
    @State var image: String
    @State var title : String
    @State var currentView :Int
  
    var body: some View{
    
            VStack(alignment: .center) {
                HStack(spacing: 20) {
                    if currentView == 0 {
                        Text("Wellcome to ... !")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .kerning(1)
                        Spacer()
                    }
                }
                    .foregroundColor(Color.black)
                    .padding()
            
                Spacer()
                
                Image(image)
                    .resizable().aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .multilineTextAlignment(.center)
                
              
                if currentView == 3 {
                    Button(action: {
                        UserDefaults.standard.set(false, forKey: "newUser")
                    }, label: {
                        Text("Get Start")
                            .foregroundColor(Color.white)
                        
                    })
                    .frame(width: 300,height: 50)
                    .background(Color.blue)
                    .cornerRadius(25)
                }
                Spacer()
            }
    }
}


