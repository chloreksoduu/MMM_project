//
//  LoginView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView{
            
            VStack {
                
                
                Text("LOGOWANIE")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .tracking(3.0)
                
                TextField("e-mail", text:$email)
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .border(Color.gray.opacity(0.6))
                    .cornerRadius(50.0)
                
                TextField("hasło", text:$password)
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .border(Color.gray.opacity(0.6))
                    .cornerRadius(50.0)
                
                
                
                NavigationLink(destination: MainPageView()) {
                    PrimaryButton(title: "Zaloguj się ")
                }
                
                
                HStack{
                    Color.gray.frame(width: 100, height: 1)
                    Text("lub użyj")
                    Color.gray.frame(width: 100, height: 1)
                }
                
                
                HStack(spacing: 50){
                    Button(action: {
                        if let url = URL(string: "https://www.google.com") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image("google")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                    
                    Button(action: {
                        if let url = URL(string: "https://www.facebook.com") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image("facebook")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                        
                    }
                    
                }.frame(maxWidth: .infinity)
                    .padding()
                
                HStack{
                    Text("Nie masz jeszcze konta?")
                        NavigationLink(destination: RegisterView()){
                            Text("Zarejestruj się")
                                .foregroundColor(.blue)
                                .underline()
                    }
                }
                
                
                
            }
            .padding()
            
        }
        
    }
}

#Preview {
    LoginView()
}
