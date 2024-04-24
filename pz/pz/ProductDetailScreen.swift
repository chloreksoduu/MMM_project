//
//  ProductDetailScreen.swift
//  pz
//
//  Created by Patrycja Zadziłko on 24/04/2024.
//

import SwiftUI

struct ProductDetailScreen: View {
 
    
    let viewmodel: Product
    var body: some View{
        ZStack{
            ScrollView{
                Image(viewmodel.imgName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                
                DescriptionViewProduct(title: viewmodel.title, rating: viewmodel.rating)
            }
            
        }
    
       
    }
}

struct DescriptionViewProduct: View {
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
            
            Text("Skład: ")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("woda, mąka, sól, pszenica, E303, E606, E47, pirosiarczany, politechnika białostocka")
            
            
           
            
            
            Text("Alergeny: ")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("pszenica, E47").underline()
            
    
            
            Text("Kraj pochodzenia: ")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("Indie")
            
            Text("Firma: ")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            Text("Indi")

        
        }
        .padding()
    }
}


#Preview {
    ProductDetailScreen(viewmodel:Product(id: 0, title: "Produkt1", imgName: "prod1", rating: 4))
}
