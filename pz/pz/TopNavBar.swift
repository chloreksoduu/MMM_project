//
//  TopNavBar.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct TopNavBar: View {
    var body: some View {
        HStack{
            Button(action: {}){
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .padding()
                    .frame(width: 50, height:50)
                    .background(Color.white)
                    .cornerRadius(10.0)
            }
            Spacer()
            
            Button(action: {}){
                Image("woman")
                    .resizable()
                    .frame(width: 45, height:45)
                    .background(Color.green.opacity(0.6))
                    .cornerRadius(60)
                    .padding()
            }
        }
    }
}

#Preview {
    TopNavBar()
}
