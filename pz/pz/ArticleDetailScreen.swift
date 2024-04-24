//
//  ProductDetailScreen.swift
//  pz
//
//  Created by Patrycja Zadziłko on 24/04/2024.
//

import SwiftUI

struct ArticleDetailScreen: View {
 
    
    let viewmodel: Article
    var body: some View{
        ZStack{
            ScrollView{
                Image(viewmodel.imgName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                
                DescriptionViewArticle(title: viewmodel.title, rating: viewmodel.rating)
            }
            
        }
    
       
    }
}

struct DescriptionViewArticle: View {
    let title: String
    let rating: Int
    @State var selected = -1
    @State var message = false
    @State  var isFavorited = false
    var body: some View{
        VStack(alignment: .leading) {
            HStack{
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Button(action: {
                    self.isFavorited.toggle()
                }) {
                    Image(systemName: isFavorited ? "heart.fill" : "heart")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(isFavorited ? .red : .gray)
                }
            }
            
            
            HStack(spacing:4){
                
                
                ForEach(0..<5){ rate in
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(self.selected >= rate ? .yellow : .gray)
                        .onTapGesture {
                            self.selected = rate
                            self.message.toggle()
                        }
                }
                
                Text("(\(rating))")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
                
                
               
            }
            

            .alert(isPresented: $message) {
                Alert(title: Text("Oceń przepis"), message: Text("Oceniłeś/aś przepis \(self.selected+1) na 5 gwiazdek"), dismissButton: .none)
            }
            
            Text("Kategoria: ")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("Zdrowie, ćwiczenia siłowe").underline()
            
            
            Text("Autor: ")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            Text("Ryszard Lubicz")
            
            
        
            Text("Treść artykułu")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
        Text("Eliud Kipchoge, znany z osiągnięć w biegach długodystansowych, pokonał dystans 42,195 km w czasie niewiarygodnych 1 godziny, 58 minut i 20 sekund. Ten wynik to nie tylko nowy rekord świata, ale także pierwszy przypadek, kiedy biegacz przebiegł maraton w czasie poniżej dwóch godzin.")
                .padding(.bottom)
        
        Text("Kipchoge już wcześniej był bliski złamania bariery dwóch godzin, co udowodnił podczas próby  w 2019 roku. Jednakże, wynik tej niedzielnej rywalizacji w Wiedniu przekracza wszelkie oczekiwania.")
    
        


            
           
    
        
        }
        .padding()
    }
}


#Preview {
    ArticleDetailScreen(viewmodel:Article(id: 0, title: "Ruch to zdrowie", imgName: "article1", rating: 4, category: "Zdrowie"))
}

