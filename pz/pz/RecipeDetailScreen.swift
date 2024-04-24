//
//  RecipeDetailScreen.swift
//  pz
//
//  Created by Patrycja Zadziłko on 24/04/2024.
//

import SwiftUI

struct RecipeDetailScreen: View {
 
    
    let viewmodel: Recipe
    var body: some View{
        ZStack{
            ScrollView{
                Image(viewmodel.imgName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                
                DescriptionView(title: viewmodel.title, rating: viewmodel.rating)
            }
            
        }
    
       
    }
}

struct DescriptionView: View {
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
            
            Text("Składniki: ")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("- 350g spaghetti lub innej ulubionej makaronu")
                        Text("- 4 ząbki czosnku, posiekane")
                        Text("- 1/4 filiżanki oliwy z oliwek extra virgin")
                        Text("- 1/2 łyżeczki płatków chili (opcjonalnie)")
                        Text("- Sól do smaku")
                        Text("- Świeżo zmielony czarny pieprz")
                        Text("- Świeża natka pietruszki, posiekana")
                        Text("- Ser parmezan (opcjonalnie), do posypania")
            
            
            Text("Sposób przygotowania: ")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("1. Gotuj makaron zgodnie z instrukcjami na opakowaniu w osolonej wodzie. Gotuj al dente.")
                        Text("2. W dużym rondlu lub głębokiej patelni na średnim ogniu rozgrzej oliwę z oliwek.")
                        Text("3. Dodaj posiekany czosnek i płatki chili (jeśli używasz) do rozgrzanej oliwy. Smaż przez około 1-2 minuty, mieszając, aż czosnek zacznie delikatnie rumienić się.")
                        Text("4. Dodaj ugotowany makaron do rondla z oliwą i czosnkiem. Dokładnie wymieszaj, aby makaron został pokryty sosem.")
                        Text("5. Dopraw solą do smaku i posyp świeżo zmielonym czarnym pieprzem.")
                        Text("6. Przed podaniem posyp makaron posiekaną natką pietruszki i, jeśli chcesz, startym serem parmezanem.")
                        Text("7. Podawaj natychmiast, ciesząc się aromatycznym i prostym w przygotowaniu daniem.")
                        
        
        }
    }
}


#Preview {
    RecipeDetailScreen(viewmodel:Recipe(id: 0, title: "Przepis1", imgName: "recipe1", rating: 4))
}
