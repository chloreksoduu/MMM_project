//
//  ProductModel.swift
//  pz
//
//  Created by Patrycja Zadziłko on 24/04/2024.
//

import SwiftUI

struct Product: Identifiable{
    var id: Int
    var title: String
    var imgName: String
    var rating: Int
}

var products = [
    Product(id: 0, title: "Produkt 1", imgName: "prod1", rating: 4),
    Product(id: 1, title: "Produkt 2", imgName: "prod2", rating: 5),
    Product(id: 2, title: "Produkt 3", imgName: "prod3", rating: 3),
    Product(id: 3, title: "Produkt 4", imgName: "prod4", rating: 4),
    Product(id: 4, title: "Produkt 5", imgName: "prod5", rating: 4),
    Product(id: 5, title: "Produkt 1", imgName: "prod1", rating: 4),
    Product(id: 6, title: "Produkt 2", imgName: "prod2", rating: 5),
    Product(id: 7, title: "Produkt 3", imgName: "prod3", rating: 3),
    Product(id: 8, title: "Produkt 4", imgName: "prod4", rating: 4),
    Product(id: 9, title: "Produkt 5", imgName: "prod5", rating: 4),
    Product(id: 10, title: "Produkt 1", imgName: "prod1", rating: 4),
    Product(id: 11, title: "Produkt 2", imgName: "prod2", rating: 5),
    Product(id: 12, title: "Produkt 3", imgName: "prod3", rating: 3),
    Product(id: 13, title: "Produkt 4", imgName: "prod4", rating: 4),
    Product(id: 14, title: "Produkt 5", imgName: "prod5", rating: 4),
]
