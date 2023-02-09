//
//  SliderView.swift
//  Slider
//
//  Created by Aamer Essa on 09/02/2023.
//

import SwiftUI

struct Slider :View {
    @State var currentView = 0
    @State var showAnumation = false
    var body: some View{
        ZStack{
            if currentView == 0 {
                walkthrouSlide(image: data[currentView].image, title: data[currentView].title,currentView: currentView)
                    .transition(.scale)
            }
             if currentView == 1  {
                 walkthrouSlide(image: data[currentView].image, title: data[currentView].title,currentView: currentView)
                     .transition(.scale)
            }
            
            if currentView == 2 {
                walkthrouSlide(image: data[currentView].image, title: data[currentView].title,currentView: currentView)
                    .transition(.scale)
           }
            
            if currentView == 3 {
                walkthrouSlide(image: data[currentView].image, title: data[currentView].title,currentView: currentView)
                    .transition(.scale)
            }
           
        }
        .overlay (
            HStack {
                
                Spacer()
                
                Button(action: {
                    
                    withAnimation {
                        UserDefaults.standard.set(false, forKey: "newUser")
                    }
                   
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1)
                })
                .padding()
                .foregroundColor(Color.black)
                
            }
            , alignment: .top
        )
        .overlay (
            
            HStack {
                if currentView > 0 {
                    
                    Button(action: {
                        withAnimation(.easeInOut) {
                            currentView -= 1
                            }
                        
                        }, label: {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 20,weight: .semibold))
                                .frame(width: 50,height: 50)
                                .foregroundColor(Color.black)
                                .background(Color.black).opacity(0.3)
                                .clipShape(Circle())
                    
                        })
                            .padding()
                    }
                
                    Spacer()
                
                if currentView < data.count-1 {
                        Button(action: {
                            withAnimation(.easeInOut) {
                            currentView += 1
                                }
                            }, label: {
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 20,weight: .semibold))
                                    .frame(width: 50,height: 50)
                                    .foregroundColor(Color.black)
                                    .background(Color.black).opacity(0.3)
                                    .clipShape(Circle())
                            })
                                .padding()
                }
            }
            , alignment: .bottom
        )
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        Slider()
    }
}
