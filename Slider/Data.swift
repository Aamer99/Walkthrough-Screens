//
//  Data.swift
//  Slider
//
//  Created by Aamer Essa on 09/02/2023.
//

import Foundation


struct Data:Identifiable {
    var id : Int
    var  title:String
    var image: String
}

var data = [
    Data(id: 1, title: "Discover the famous  and the historical places in the Saudi cities ", image: "saudiMap"),
    Data(id: 2, title: "Read more about the historical places to have knowledge about it  ", image: "askQImage"),
    Data(id: 3, title: "Expand our data by adding new landmarks", image: "typeImage"),
    Data(id: 4, title: "Know more about Lnadmarks in Saudi Arabia ", image: "readyImage")]
