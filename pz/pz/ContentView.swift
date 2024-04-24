//
//  ContentView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isScaled = false;
    @State private var isSecondViewPresented = false ;
    
    var body: some View {
        NavigationView{
            
        VStack {
            Image("food")
                .resizable()
                .frame(width: 300, height: 300)
            
            
            Text("Witaj w")
                .font(.title)
                .tracking(2.0)
            Text("MealMasterMind")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .tracking(2.0)
                .foregroundColor(.green)
            
            
            
            NavigationLink(destination: LoginView()) {
                PrimaryButton(title: "Zaloguj się ")
            }
            
            
            HStack{
                Text("Nie masz jeszcze konta?")
                Button(action: {
                    
                }) {
                    NavigationLink(destination: RegisterView()){
                        Text("Zarejestruj się")
                            .foregroundColor(.blue)
                            .underline()
                    }
                }
            }
            .padding()
            
            
            
        }
        .padding()
    }
    }
}

struct PrimaryButton: View {
    @State private var isScaled = false;
    
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .frame(maxWidth: .infinity)
            .tracking(3.0)
            .padding()
            .foregroundColor(.black)
            .background(Color.green.opacity(0.6))
            .font(.title)
            .cornerRadius(50)
            .scaleEffect(isScaled ? 1.2 : 1.0)
            .onTapGesture {
                withAnimation(.easeInOut){
                    self.isScaled.toggle()
                }
                
            }
    }
}

#Preview {
    ContentView()
}
