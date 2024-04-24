//
//  ArticleCardView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct ArticleCardView: View {
    let image: Image
    let title:String
    let rating: Int
    let size: CGFloat
    let category: String

    var body: some View {
        VStack{
            image
                .resizable()
                .cornerRadius(20.0)
                .frame(width: size, height: 200 * (size/210))
            
            Text(title).font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            HStack(spacing: 2){
                Text("Kategoria: ")
                    .font(.title3).fontWeight(.bold)
                Spacer()
                Text(category).font(.title3)
            }
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4) 

        
    }
}

