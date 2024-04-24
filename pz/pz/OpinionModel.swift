//
//  OpinionModel.swift
//  pz
//
//  Created by Patrycja Zadziłko on 24/04/2024.
//

import SwiftUI


struct Opinion: Identifiable{
    var id: Int
    var title: String
    var text: String
    var date: String
    var img: String
    var username: String
}

var opinions = [
Opinion(id: 0, title: "Super aplikacja", text: "Bardzo dobra aplikacja, korzystam z rodziną", date: "20.04.2024", img: "woman", username: "kasia123"),
Opinion(id: 1, title: "Super aplikacja", text: "Bardzo dobra aplikacja, korzystam z rodziną", date: "22.04.2024", img: "woman", username: "kasia1222"),
]
