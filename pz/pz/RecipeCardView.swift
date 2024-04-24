//
//  RecipeCardView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct RecipeCardView: View {
    let image: Image
    let title:String
    let rating: Int
    let size: CGFloat

    var body: some View {
        VStack{
            image
                .resizable()
                .cornerRadius(20.0)
                .frame(width: size, height: 200 * (size/210))
            
            Text(title).font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            HStack(spacing: 2){
                ForEach(0..<rating){rating in
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.yellow)
                }
                Spacer()
                Text("20 min").font(.title3)
                
            }
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
        
    }
}




