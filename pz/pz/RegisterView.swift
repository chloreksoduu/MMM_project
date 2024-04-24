//
//  RegisterView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView{
            VStack{
                VStack {
                    Text("REJESTRACJA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .tracking(3.0)
                    
                    
                    Image("woman")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .background(Color.green.opacity(0.6))
                        .cornerRadius(60)
                        .padding()
                }
                
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
                    .padding(.bottom, 10)
                
                
                
                NavigationLink(destination: MainPageView()) {
                    PrimaryButton(title: "Zarejestruj się ")
                }
                
                
                
                HStack{
                    Text("Masz już konto?")
                    NavigationLink(destination: LoginView()){
                        Text("Zaloguj się")
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
    RegisterView()
}
