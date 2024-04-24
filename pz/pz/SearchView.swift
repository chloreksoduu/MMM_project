//
//  SearchView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct SearchView: View {
    @Binding var search: String

    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.trailing, 10)
                TextField("Wyszukaj przepis", text: $search)
        
            }
                .padding()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                Image(systemName: "text.magnifyingglass")
                    .padding().foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
                
            
        }

        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .frame(maxWidth: 350)
 
        .background()
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
    
}

struct Search_Preview: PreviewProvider {
    @State static var search: String = ""
    static var previews: some View{
        SearchView(search: $search)
    }
}
