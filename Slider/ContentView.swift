//
//  ContentView.swift
//  Slider
//
//  Created by Aamer Essa on 09/02/2023.
//

import SwiftUI


struct ContentView: View {

    @AppStorage("newUser") var newUser = true
   
    var body: some View {
        
        if newUser {
            Slider()
        } else {
            
            HStack{
                Text("Hi")
                
            }
        }
       
    }
}
