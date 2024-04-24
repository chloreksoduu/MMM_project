//
//  ArticleModel.swift
//  pz
//
//  Created by Patrycja Zadziłko on 24/04/2024.
//

import SwiftUI

struct Article: Identifiable{
    var id: Int
    var title: String
    var imgName: String
    var rating: Int
    var category: String
}

var articles = [
    Article(id: 0, title: "Zdrowie", imgName: "article1", rating: 4, category:"Zdrowie"),
    Article(id: 1, title: "Artykuł 2", imgName: "article2", rating: 5, category: "Uroda"),
    Article(id: 2, title: "Artykuł 3", imgName: "article1", rating: 3,category:"Sport"),
    Article(id: 3, title: "Artykuł 4", imgName: "article1", rating: 4,category:"Zdrowie"),
    Article(id: 4, title: "Artykuł 5", imgName: "article2", rating: 4,category:"Zdrowie")
]
